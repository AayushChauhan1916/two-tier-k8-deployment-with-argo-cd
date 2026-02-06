{{- define "chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chart.secretName" -}}
{{- printf "%s-secret" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chart.apiServiceName" -}}
{{- printf "%s-api-service" (include "chart.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
