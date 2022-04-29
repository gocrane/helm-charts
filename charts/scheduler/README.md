# Crane-scheduler
## TL;DR

```console
helm repo add crane https://gocrane.github.io/helm-charts
helm repo update

helm install scheduler -n crane-system --create-namespace crane/scheduler
```

## Introduction

This chart bootstraps Crane Scheduler on a Kubernetes cluster using the Helm package manager.

## Prerequisites

* Kubernetes 1.18+
* Helm 3+

## Get Repo Info

```console
helm repo add crane https://gocrane.github.io/helm-charts
helm repo update
```

See [helm repo](https://helm.sh/docs/helm/helm_repo/) for command documentation.

## Install Chart

```console
helm repo add crane https://gocrane.github.io/helm-charts
helm install scheduler -n crane-system --create-namespace crane/scheduler
```

See [configuration](#configuration) below.

See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation.

## Uninstall Chart

```console
helm uninstall scheduler -n crane-system
```

This removes all the Kubernetes components associated with the chart and deletes the release.

See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation.

## Configuration

The following table lists the configurable parameters of the Crane-scheduler chart and their default values.

| Parameter                                                  | Description                               | Default                                         |
|:-----------------------------------------------------------|:------------------------------------------|:------------------------------------------------|
| `scheduler.enable`                                         | Whether to deploy Scheduler               | true                |
| `scheduler.image.repository`                               | Image name of Scheduler.                  | `docker.io/gocrane/crane-scheduler` |
| `scheduler.image.tag`                                      | Image tag of Scheduler. Optional, given app version of Helm chart is used by default | `0.0.23` |
| `scheduler.replicaCount`                                   | Replica count of Scheduler | `1` |
| `controller.enable`                                        | Whether to deploy Scheduler-controller                   | true                |
| `controller.image.repository`                              | Image name of Scheduler-controller.  | `docker.io/gocrane/crane-scheduler-controller` |
| `controller.image.tag`                                     | Image tag of Scheduler-controller. Optional, given app version of Helm chart is used by default | `0.0.23` |
| `controller.replicaCount`                                  | Replica count of Scheduler-controller | `1` |
| `global.prometheusAddr`                                    | Address of Prometheus | `http://prometheus-server.crane-system.svc.cluster.local:8080` |

