{{- define "templating-deep-dive.fullname" -}}
{{- $defaultName := printf "%s-%s" .Release.Name .Chart.Name }}
{{- .Values.customName | default $defaultName | trunc 63 | trimSuffix "-"  -}}
{{- end -}}

{{- define "templating-deep-dive.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
managed-by: "helm"
{{- end -}}

{{/*Expects an integer or string to be passed as the context*/}}
{{- define "templating-deep-dive.validators.portRange" -}}
{{- $sanitizedPort := int . -}}
{{/*Port validation*/}}
{{- if or (lt $sanitizedPort 1) (gt $sanitizedPort 65535) -}}
{{- fail "Error: Ports must always be between 1 and 65535." -}}
{{- end -}}
{{- end -}}

{{/*Expects an object with port and type to be passed as the context*/}}
{{- define "templating-deep-dive.validators.service" -}}
{{- include "templating-deep-dive.validators.portRange" .port -}}

{{/*Service type validation*/}}
{{- $allowedSvcTypes := list "ClusterIP" "NodePort" -}}
{{- if not (has .type $allowedSvcTypes) -}}
{{- fail (printf "Invalid service type %s. Supported values are: %s" .type (join ", " $allowedSvcTypes)) -}}
{{- end -}}
{{- end -}}