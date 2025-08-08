terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
    }
    http = {
      source = "hashicorp/http"
    }
  }
}

variable "grafana_folder" {
  description = "Folder in grafana to add the dashboards to"
  type        = string
  default     = null
}

resource "grafana_dashboard" "k8s-alertmanager-overview" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/alertmanager-overview.json")
}

resource "grafana_dashboard" "k8s-apiserver" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/apiserver.json")
}

resource "grafana_dashboard" "k8s-cluster-total" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/cluster-total.json")
}

resource "grafana_dashboard" "k8s-controller-manager" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/controller-manager.json")
}

resource "grafana_dashboard" "k8s-grafana-overview" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/grafana-overview.json")
}

resource "grafana_dashboard" "k8s-k8s-resources-cluster" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/k8s-resources-cluster.json")
}

resource "grafana_dashboard" "k8s-k8s-resources-namespace" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/k8s-resources-namespace.json")
}

resource "grafana_dashboard" "k8s-k8s-resources-node" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/k8s-resources-node.json")
}

resource "grafana_dashboard" "k8s-k8s-resources-pod" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/k8s-resources-pod.json")
}

resource "grafana_dashboard" "k8s-k8s-resources-workload" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/k8s-resources-workload.json")
}

resource "grafana_dashboard" "k8s-k8s-resources-workloads-namespace" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/k8s-resources-workloads-namespace.json")
}

resource "grafana_dashboard" "k8s-kubelet" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/kubelet.json")
}

resource "grafana_dashboard" "k8s-namespace-by-pod" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/namespace-by-pod.json")
}

resource "grafana_dashboard" "k8s-namespace-by-workload" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/namespace-by-workload.json")
}

resource "grafana_dashboard" "k8s-node-cluster-rsrc-use" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/node-cluster-rsrc-use.json")
}

resource "grafana_dashboard" "k8s-node-rsrc-use" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/node-rsrc-use.json")
}

resource "grafana_dashboard" "k8s-nodes-darwin" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/nodes-darwin.json")
}

resource "grafana_dashboard" "k8s-nodes" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/nodes.json")
}

resource "grafana_dashboard" "k8s-persistentvolumesusage" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/persistentvolumesusage.json")
}

resource "grafana_dashboard" "k8s-pod-total" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/pod-total.json")
}

resource "grafana_dashboard" "k8s-prometheus-remote-write" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/prometheus-remote-write.json")
}

resource "grafana_dashboard" "k8s-prometheus" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/prometheus.json")
}

resource "grafana_dashboard" "k8s-proxy" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/proxy.json")
}

resource "grafana_dashboard" "k8s-scheduler" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/scheduler.json")
}

resource "grafana_dashboard" "k8s-workload-total" {
  folder      = var.grafana_folder
  config_json = file("${path.module}/dashboards/workload-total.json")
}
