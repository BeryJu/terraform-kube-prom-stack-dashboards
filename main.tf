
data "http" "k8s-alertmanager-overview" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/alertmanager-overview.json"
}

resource "grafana_dashboard" "k8s-alertmanager-overview" {
  config_json = data.http.k8s-alertmanager-overview.body
}

data "http" "k8s-apiserver" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/apiserver.json"
}

resource "grafana_dashboard" "k8s-apiserver" {
  config_json = data.http.k8s-apiserver.body
}

data "http" "k8s-cluster-total" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/cluster-total.json"
}

resource "grafana_dashboard" "k8s-cluster-total" {
  config_json = data.http.k8s-cluster-total.body
}

data "http" "k8s-controller-manager" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/controller-manager.json"
}

resource "grafana_dashboard" "k8s-controller-manager" {
  config_json = data.http.k8s-controller-manager.body
}

data "http" "k8s-k8s-resources-cluster" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/k8s-resources-cluster.json"
}

resource "grafana_dashboard" "k8s-k8s-resources-cluster" {
  config_json = data.http.k8s-k8s-resources-cluster.body
}

data "http" "k8s-k8s-resources-namespace" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/k8s-resources-namespace.json"
}

resource "grafana_dashboard" "k8s-k8s-resources-namespace" {
  config_json = data.http.k8s-k8s-resources-namespace.body
}

data "http" "k8s-k8s-resources-node" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/k8s-resources-node.json"
}

resource "grafana_dashboard" "k8s-k8s-resources-node" {
  config_json = data.http.k8s-k8s-resources-node.body
}

data "http" "k8s-k8s-resources-pod" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/k8s-resources-pod.json"
}

resource "grafana_dashboard" "k8s-k8s-resources-pod" {
  config_json = data.http.k8s-k8s-resources-pod.body
}

data "http" "k8s-k8s-resources-workload" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/k8s-resources-workload.json"
}

resource "grafana_dashboard" "k8s-k8s-resources-workload" {
  config_json = data.http.k8s-k8s-resources-workload.body
}

data "http" "k8s-k8s-resources-workloads-namespace" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/k8s-resources-workloads-namespace.json"
}

resource "grafana_dashboard" "k8s-k8s-resources-workloads-namespace" {
  config_json = data.http.k8s-k8s-resources-workloads-namespace.body
}

data "http" "k8s-kubelet" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/kubelet.json"
}

resource "grafana_dashboard" "k8s-kubelet" {
  config_json = data.http.k8s-kubelet.body
}

data "http" "k8s-namespace-by-pod" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/namespace-by-pod.json"
}

resource "grafana_dashboard" "k8s-namespace-by-pod" {
  config_json = data.http.k8s-namespace-by-pod.body
}

data "http" "k8s-namespace-by-workload" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/namespace-by-workload.json"
}

resource "grafana_dashboard" "k8s-namespace-by-workload" {
  config_json = data.http.k8s-namespace-by-workload.body
}

data "http" "k8s-node-cluster-rsrc-use" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/node-cluster-rsrc-use.json"
}

resource "grafana_dashboard" "k8s-node-cluster-rsrc-use" {
  config_json = data.http.k8s-node-cluster-rsrc-use.body
}

data "http" "k8s-node-rsrc-use" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/node-rsrc-use.json"
}

resource "grafana_dashboard" "k8s-node-rsrc-use" {
  config_json = data.http.k8s-node-rsrc-use.body
}

data "http" "k8s-nodes" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/nodes.json"
}

resource "grafana_dashboard" "k8s-nodes" {
  config_json = data.http.k8s-nodes.body
}

data "http" "k8s-persistentvolumesusage" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/persistentvolumesusage.json"
}

resource "grafana_dashboard" "k8s-persistentvolumesusage" {
  config_json = data.http.k8s-persistentvolumesusage.body
}

data "http" "k8s-pod-total" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/pod-total.json"
}

resource "grafana_dashboard" "k8s-pod-total" {
  config_json = data.http.k8s-pod-total.body
}

data "http" "k8s-prometheus-remote-write" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/prometheus-remote-write.json"
}

resource "grafana_dashboard" "k8s-prometheus-remote-write" {
  config_json = data.http.k8s-prometheus-remote-write.body
}

data "http" "k8s-prometheus" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/prometheus.json"
}

resource "grafana_dashboard" "k8s-prometheus" {
  config_json = data.http.k8s-prometheus.body
}

data "http" "k8s-proxy" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/proxy.json"
}

resource "grafana_dashboard" "k8s-proxy" {
  config_json = data.http.k8s-proxy.body
}

data "http" "k8s-scheduler" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/scheduler.json"
}

resource "grafana_dashboard" "k8s-scheduler" {
  config_json = data.http.k8s-scheduler.body
}

data "http" "k8s-workload-total" {
  url = "https://raw.githubusercontent.com/BeryJu/kube-stack-dashboards/master/dasbhoards/workload-total.json"
}

resource "grafana_dashboard" "k8s-workload-total" {
  config_json = data.http.k8s-workload-total.body
}
