
{{/*
Create the name of the user namespace
*/}}
{{- define "userNamespace" -}}
{{- printf "%s-user" .Values.baseNamespace }}
{{- end }}

{{/*
Create the name of the system namespace
*/}}
{{- define "sysNamespace" -}}
{{- printf "%s-sys" .Values.baseNamespace }}
{{- end }}

