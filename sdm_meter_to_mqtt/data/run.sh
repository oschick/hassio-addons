#!/usr/bin/with-contenv bashio
set -e

# Get the MQTT settings
export MQTT_BROKER_AUTH=$(bashio::config 'MQTT_BROKER_AUTH')
export MQTT_BROKER_IP=$(bashio::config 'MQTT_BROKER_IP')
export MQTT_BROKER_PORT=$(bashio::config 'MQTT_BROKER_PORT')
export MQTT_SDM_TOPICS=$(bashio::config 'MQTT_SDM_TOPICS')

# Get the SDM settings
export SDM_IDS=$(bashio::config 'SDM_IDS')
export SDM_IP=$(bashio::config 'SDM_IP')
export SDM_PORT=$(bashio::config 'SDM_PORT')
export SDM_NETWORK_TYPE=$(bashio::config 'SDM_NETWORK_TYPE')
export SDM_TYPES=$(bashio::config 'SDM_TYPES')

export UPDATE_TIME=$(bashio::config 'UPDATE_TIME')

bashio::log.info "Starting SDM Meter to MQTT"
# Start the script
python3 src/agent.py
```