#!/bin/bash
# -*- coding: UTF8 -*-

PORTS_RC="/config/rtorrent/ports.rc"

if [[ ! -e "$PORTS_RC" ]];
then
  [[ -z "$BT_PORT"  ]] && BT_PORT=50000
  [[ -z "$DHT_PORT" ]] && DHT_PORT=6881
  echo "dht.port.set=${DHT_PORT}" > "$PORTS_RC"
  echo "network.port_range.set = ${BT_PORT}-${BT_PORT}" >> "$PORTS_RC"
fi
