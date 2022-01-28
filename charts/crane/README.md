# Crane: Cloud Resource Analytics and Economics

<img alt="Crane logo" height="100" src="https://raw.githubusercontent.com/gocrane/crane/main/docs/images/crane.png" title="Crane" width="200"/>

---

Crane (FinOps Crane) is a cloud native open source project which manages cloud resources on Kubernetes stack, it is inspired by FinOps concepts.

## TL;DR

```console
helm repo add crane https://gocrane.github.io/helm-charts
helm repo update

helm install crane -n crane-system --create-namespace crane
```

## Introduction

This chart bootstraps Crane Components on a Kubernetes cluster using the Helm package manager.

## Prerequisites

* Kubernetes 1.18+
* Helm 3+

## Get Repo Info

```console
helm repo add crane https://gocrane.github.io/helm-charts
helm repo update
```

_See [helm repo](https://helm.sh/docs/helm/helm_repo/) for command documentation._

## Install Chart

```console
helm install crane -n crane-system --create-namespace crane
```

_See [configuration](#configuration) below._

_See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation._

## Uninstall Chart

```console
helm uninstall crane
```

This removes all the Kubernetes components associated with the chart and deletes the release.

_See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation._

## Upgrading Chart

```console
helm upgrade crane --install
```

_See [helm upgrade](https://helm.sh/docs/helm/helm_upgrade/) for command documentation._

## Configuration

The following table lists the configurable parameters of the Crane chart and their default values.

| Parameter                                                  | Description                               | Default                                         |
|:-----------------------------------------------------------|:------------------------------------------|:------------------------------------------------|
| `craned.image.repository`                                  | Image name of Craned                      | `docker.io/gocrane/craned`                |
| `craned.image.tag`                                         | Image tag of Craned. Optional, given app version of Helm chart is used by default | `` |
| `craned.image.pullPolicy`                                  | Image pullPolicy of Craned | `IfNotPresent` |
| `craned.replicaCount`                                      | Replica count of Craned | `1` |
| `craned.containerArgs`                                     | Container's command line arguments to pass to Craned | `{ "prometheus-address": "http://prometheus-server.crane-system.svc.cluster.local:8080", "feature-gates": "Analysis=true,TimeSeriesPrediction=true,Autoscaling=true", "log-level": "2"}` |
| `craned.podAnnotations`                                    | Pod annotations  of Craned | `{}` |
| `craned.resources`                                         | Pod resources of Craned | `{}` |
| `craned.nodeSelector`                                      | Node selectors of Craned deployment| `{}` |
| `craned.tolerations`                                       | Tolerations of Craned deployment | `{}` |
| `craned.affinity`                                          | Affinity of Craned deployment | `{}` |
| `craned.nodeSelector`                                      | Node selectors of Craned | `{}` |
| `metricAdapter.image.repository`                           | Image name of MetricAdapter                      | `docker.io/gocrane/metric-adapter`                |
| `metricAdapter.image.tag`                                  | Image tag of MetricAdapter. Optional, given app version of Helm chart is used by default | `` |
| `metricAdapter.image.pullPolicy`                           | Image pullPolicy of MetricAdapter | `IfNotPresent` |
| `metricAdapter.replicaCount`                               | Replica count of MetricAdapter | `1` |
| `metricAdapter.containerArgs`                              | Container's command line arguments to pass to MetricAdapter | `{ "secure-port": "6443", "alsologtostderr": "true", "remote-adapter": "false", "remote-adapter-service-namespace": "", "remote-adapter-service-name": "", "remote-adapter-service-port": "", "log-level": "", "api-qps": "300", "api-burst": "400"}` |
| `metricAdapter.podAnnotations`                             | Pod annotations  of MetricAdapter | `{}` |
| `metricAdapter.resources`                                  | Pod resources of MetricAdapter | `{}` |
| `metricAdapter.nodeSelector`                               | Node selectors of MetricAdapter deployment| `{}` |
| `metricAdapter.tolerations`                                | Tolerations of MetricAdapter deployment | `{}` |
| `metricAdapter.affinity`                                   | Affinity of MetricAdapter deployment | `{}` |
| `metricAdapter.nodeSelector`                               | Node selectors of MetricAdapter | `{}` |