# Based off of https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/hack/sync_grafana_dashboards.py
from requests import get
from yaml import load, FullLoader
from os import makedirs

output = "output/"
upstream_sources = [
    "https://raw.githubusercontent.com/prometheus-operator/kube-prometheus/main/manifests/grafana-dashboardDefinitions.yaml"
]

makedirs(output, exist_ok=True)

def build(doc: dict):
    for config_map in doc.get("items", []):
        for file, dashboard in config_map.get("data", {}).items():
            print(f"- writing {file}")
            with open(f"{output}/{file}", "w+", encoding="utf-8") as dbf:
                dbf.write(dashboard)

if __name__ == "__main__":
    for source in upstream_sources:
        yaml_body = get(source).text
        doc = load(yaml_body, Loader=FullLoader)
        build(doc)
