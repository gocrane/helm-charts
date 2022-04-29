# Crane: Cloud Resource Analytics and Economics

<img alt="Crane logo" height="100" src="https://raw.githubusercontent.com/gocrane/crane/main/docs/images/crane.png" title="Crane" width="200"/>

---

Crane (FinOps Crane) is a cloud native open source project which manages cloud resources on Kubernetes stack, it is inspired by FinOps concepts.

## Getting Started

**Prerequisites**

- Kubernetes 1.18+
- Helm 3.1.0

**Helm Installation**

Please refer to Helm's [documentation](https://helm.sh/docs/intro/install/) for installation.

**Add Helm Chart Repo**

```console
helm repo add crane https://gocrane.github.io/helm-charts
```

**Install Crane**

```console
helm install crane -n crane-system --create-namespace crane/crane
```

you can see [this document](./charts/crane/README.md) to learn more.

**Install Fadvisor**

```console
helm install fadvisor -n crane-system --create-namespace crane/fadvisor
```

you can see [this document](./charts/fadvisor/README.md) to learn more.

**Install Crane-scheduler**

```console
helm install scheduler -n crane-system --create-namespace crane/scheduler
```

you can see [this document](./charts/scheduler/README.md) to learn more.
