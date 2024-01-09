#!/usr/bin/with-contenv bashio
set -e

# Get the MQTT settings
export MQTT_BROKER_AUTH=$(bashio::config 'MQTT_BROKER_AUTH')
export MQTT_BROKER_IP=$(bashio::config 'MQTT_BROKER_IP')
echo $MQTT_BROKER_IP
export MQTT_BROKER_PORT=$(bashio::config 'MQTT_BROKER_PORT')
echo $MQTT_BROKER_PORT
export MQTT_INVERTER_TOPIC=$(bashio::config 'MQTT_INVERTER_TOPIC')
echo $MQTT_INVERTER_TOPIC

# Get the SDM settings
export INVERTER_IP=$(bashio::config 'INVERTER_IP')
export INVERTER_PORT=$(bashio::config 'INVERTER_PORT')

export UPDATE_TIME=$(bashio::config 'UPDATE_TIME')

bashio::log.info "Starting Solarmax to MQTT"
# Start the script
python3 src/python/agent.py
```