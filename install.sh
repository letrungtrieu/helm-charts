#!/bin/bash
helm repo add kntrain https://letrungtrieu.github.io/helm-charts/
helm repo update
helm install kntrain kntrain/knautotrain -f values.yaml -n kimloi