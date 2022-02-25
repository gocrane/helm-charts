# Fadvisor
## TL;DR

```console
helm repo add crane https://gocrane.github.io/helm-charts
helm repo update

helm install fadvisor -n crane-system --create-namespace crane/fadvisor
```

## Introduction

This chart bootstraps Crane Fadvisor on a Kubernetes cluster using the Helm package manager.

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
### Deploy on local
Install on local such as mac desktop, it will use default config. you can also deploy on cloud by this way, but it will use default config.

```
helm repo add crane https://gocrane.github.io/helm-charts
helm install fadvisor -n crane-system --create-namespace crane/fadvisor
```

### Deploy on cloud
If you deploy fadvisor on cloud, now it support tencent cloud. you need provide a qcloud config file which include cloud credentials as following, make sure you specify your `clusterId`,`secretId`,`secretKey`,`region`

#### cloudCredentialConfig
```
[credentials]
clusterId={your cluster id}
appId=app1
secretId={your cloud provider credential secret id}
secretKey={your cloud provider credential secret key}
[clientProfile]
defaultLimit=100
defaultLanguage=zh-CN
defaultTimeoutSeconds=10
region={your cluster region, such as ap-beijing、ap-shanghai、ap-guangzhou、ap-shenzhen and so on, you can find region name in your cloud provider console}
domainSuffix=internal.tencentcloudapi.com
scheme=
```
#### helm install
then execute following commands, suppose your config file name is qcloud-config.ini in your current directory:
```
helm repo add crane https://gocrane.github.io/helm-charts
helm install fadvisor --set-file cloudConfigFile=qcloud-config.ini --set extraArgs.provider=qcloud  -n crane-system --create-namespace crane/fadvisor
```

See [configuration](#configuration) below.

See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation.

## Uninstall Chart

```console
helm uninstall fadvisor -n crane-system
```

This removes all the Kubernetes components associated with the chart and deletes the release.

See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation.

## Configuration

The following table lists the configurable parameters of the Fadvisor chart and their default values.

| Parameter                                                  | Description                               | Default                                         |
|:-----------------------------------------------------------|:------------------------------------------|:------------------------------------------------|
| `image.repository`                                         | Image name of Fadvisor                      | `docker.io/gocrane/fadvisor`                |
| `image.tag`                                                | Image tag of Fadvisor. Optional, given app version of Helm chart is used by default | `` |
| `image.pullPolicy`                                         | Image pullPolicy of Fadvisor | `IfNotPresent` |
| `replicaCount`                                             | Replica count of Fadvisor | `1` |
| `podAnnotations`                                           | Pod annotations  of Fadvisor | `{}` |
| `resources`                                                | Pod resources of Fadvisor | `{}` |
| `nodeSelector`                                             | Node selectors of Fadvisor deployment| `{}` |
| `tolerations`                                              | Tolerations of Fadvisor deployment | `{}` |
| `affinity`                                                 | Affinity of Fadvisor deployment | `{}` |
| `nodeSelector`                                             | Node selectors of Fadvisor | `{}` |
| `extraArgs`                                                | Extra container's command line arguments to pass to Fadvisor | `{ "provider": "qcloud", "v": "4"}` |
| `cloudConfigFile`                                          | Cloud provider config file which used by Fadvisor | see [cloud credential config](#cloudCredentialConfig) |