{{/*
Create a default fully qualified app name, to use as base bame for all ressources.
Use the release name by default
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{/*{{- define "seaweed.baseName" -}}*/}}
{{/*{{- if .Values.baseNameOverride }}*/}}
{{/*{{- .Values.baseNameOverride | trunc 63 | trimSuffix "-" }}*/}}
{{/*{{- else }}*/}}
{{/*{{- .Release.Name | trunc 63 | trimSuffix "-" }}*/}}
{{/*{{- end }}*/}}
{{/*{{- end }}*/}}


{{/* Simple and under control */}}

{{- define "seaweed.baseName" -}}
{{- .Values.baseName}}
{{- end }}
