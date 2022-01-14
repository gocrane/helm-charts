#!/bin/bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo add crane https://gocrane.github.io/helm-charts
helm repo update
helm install prometheus -n crane-system --set pushgateway.enabled=false --set alertmanager.enabled=false --set server.persistentVolume.enabled=false -f https://raw.githubusercontent.com/gocrane/helm-charts/main/integration/prometheus/override_values.yaml --create-namespace  prometheus-community/prometheus
helm install grafana -f https://raw.githubusercontent.com/gocrane/helm-charts/main/integration/grafana/override_values.yaml -n crane-system --create-namespace grafana/grafana
helm install cost-exporter -n crane-system --create-namespace crane/cost-exporter
helm install craned -n crane-system --create-namespace crane/craned
helm install metric-adapter -n crane-system --create-namespace crane/metric-adapter
