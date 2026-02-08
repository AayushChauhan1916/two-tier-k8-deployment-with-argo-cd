{{- define "chart.name" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "chart.appServiceName" -}}
{{- printf "%s-api-service" (include "chart.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}