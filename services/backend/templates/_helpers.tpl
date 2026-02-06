{{- define "chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app.secretName" -}}
{{- printf "%s-secret" (include "chart.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
