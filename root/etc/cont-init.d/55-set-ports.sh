#!/usr/bin/with-contenv bash
# -*- coding: UTF8 -*-

PORTS_RC="/config/rtorrent/ports.rc"

echo "$(env)"

if [[ ! -e "$PORTS_RC" ]]; then
  echo "Conserve ports.rc existant"
else
  [[ -z "$BT_PORT"  ]] && BT_PORT=50000
  [[ -z "$DHT_PORT" ]] && DHT_PORT=6881
  echo "dht.port.set=${DHT_PORT}" > "$PORTS_RC"
  echo "network.port_range.set = ${BT_PORT}-${BT_PORT}" >> "$PORTS_RC"
fi

cat "$PORTS_RC"
