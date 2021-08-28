# Based off of https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/hack/sync_grafana_dashboards.py
from requests import get
from yaml import load, FullLoader
from os import makedirs

raw_output = "dashboards/"

upstream_sources = [
    "https://raw.githubusercontent.com/prometheus-operator/kube-prometheus/main/manifests/grafana-dashboardDefinitions.yaml"
]

makedirs(raw_output, exist_ok=True)

def build(doc: dict):
    for config_map in doc.get("items", []):
        for file, dashboard in config_map.get("data", {}).items():
            print(f"- writing {file}")
            with open(f"{raw_output}/{file}", "w+", encoding="utf-8") as dbf:
                dashboard = dashboard.replace('"hide": 2,', '"hide": 0,')
                dbf.write(dashboard)

def build_tf(doc: dict):
    main_tf = """terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "~> 1.13"
    }
    http = {
      source = "hashicorp/http"
      version = "~> 2.1"
    }
  }
}

variable "grafana_folder" {
  description = "Folder in grafana to add the dashboards to"
  type        = number
  default     = 0
}

"""
    for config_map in doc.get("items", []):
        for file, _ in config_map.get("data", {}).items():
            slug = file.replace(".json", "")
            main_tf += f"""
data "http" "k8s-{slug}" {{
  url = "https://raw.githubusercontent.com/BeryJu/kube-prom-stack-dashboards/master/dashboards/{file}"
}}

resource "grafana_dashboard" "k8s-{slug}" {{
  folder      = var.grafana_folder
  config_json = data.http.k8s-{slug}.body
}}
"""
    with open(f"main.tf", "w+", encoding="utf-8") as mtf:
        mtf.write(main_tf)
    print(f"- writing tf")

if __name__ == "__main__":
    for source in upstream_sources:
        yaml_body = get(source).text
        doc = load(yaml_body, Loader=FullLoader)
        build(doc)
        build_tf(doc)
