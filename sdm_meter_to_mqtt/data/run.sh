#!/usr/bin/with-contenv bashio
set -e

# Get the MQTT settings
export MQTT_BROKER_AUTH=$(bashio::config 'mqtt_auth')
export MQTT_BROKER_IP=$(bashio::config 'mqtt_broker_ip')
export MQTT_BROKER_PORT=$(bashio::config 'mqtt_broker_port')
export MQTT_SDM_TOPICS=$(bashio::config 'mqtt_sdm_topics')

# Get the SDM settings
export SDM_IDS=$(bashio::config 'sdm_ids')
export SDM_IP=$(bashio::config 'sdm_ip')
export SDM_PORT=$(bashio::config 'sdm_port')
export SDM_NETWORK_TYPE=$(bashio::config 'sdm_network_type')
export SDM_TYPES=$(bashio::config 'sdm_types')

export UPDATE_TIME=$(bashio::config 'update_time')

bashio::log.info "Starting SDM Meter to MQTT"
# Start the script
python3 src/agent.py
```