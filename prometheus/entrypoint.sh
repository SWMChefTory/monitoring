#!/bin/sh
set -e
sed -e "s/\${PROMETHEUS_HOST}/${PROMETHEUS_HOST}/g" \
    -e "s/\${PROMETHEUS_PORT}/${PROMETHEUS_PORT}/g" \
    -e "s/\${NODE_EXPORTER_HOST}/${NODE_EXPORTER_HOST}/g" \
    -e "s/\${NODE_EXPORTER_PORT}/${NODE_EXPORTER_PORT}/g" \
    -e "s/\${CADVISOR_HOST}/${CADVISOR_HOST}/g" \
    -e "s/\${CADVISOR_PORT}/${CADVISOR_PORT}/g" \
    -e "s/\${MYSQL_EXPORTER_HOST}/${MYSQL_EXPORTER_HOST}/g" \
    -e "s/\${MYSQL_EXPORTER_PORT}/${MYSQL_EXPORTER_PORT}/g" \
    -e "s/\${PROXY_SERVER_HOST}/${PROXY_SERVER_HOST}/g" \
    -e "s/\${PROXY_SERVER_PORT}/${PROXY_SERVER_PORT}/g" \
    -e "s/\${AI_RECIPE_SUMMARY_HOST}/${AI_RECIPE_SUMMARY_HOST}/g" \
    -e "s/\${AI_RECIPE_SUMMARY_PORT}/${AI_RECIPE_SUMMARY_PORT}/g" \
    -e "s/\${AI_VOICE_COMMAND_HOST}/${AI_VOICE_COMMAND_HOST}/g" \
    -e "s/\${AI_VOICE_COMMAND_PORT}/${AI_VOICE_COMMAND_PORT}/g" \
    /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml
exec /bin/prometheus "$@"