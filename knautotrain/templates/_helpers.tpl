{{/*
Expand the name of the chart.
*/}}
{{- define "knautotrain.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "knautotrain.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "knautotrain.labels" -}}
helm.sh/chart: {{ include "knautotrain.chart" . }}
app.kubernetes.io/name: {{ include "knautotrain.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }} 