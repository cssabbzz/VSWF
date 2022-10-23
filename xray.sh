#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2c266e54-ae20-4de6-b715-37a23948b04f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

