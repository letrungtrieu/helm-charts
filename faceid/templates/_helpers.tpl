{{/*
Expand the name of the chart.
*/}}
{{- define "faceid.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "faceid.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "faceid.labels" -}}
helm.sh/chart: {{ include "faceid.chart" . }}
app.kubernetes.io/name: {{ include "faceid.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }} 