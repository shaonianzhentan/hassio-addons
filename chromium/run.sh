#!/usr/bin/with-contenv bashio

URL=$(bashio::config 'startup_url')

echo "Starting headless Chromium with CDP..."

chromium \
  --headless=new \
  --remote-debugging-address=0.0.0.0 \
  --remote-debugging-port=9222 \
  --no-sandbox \
  --disable-gpu \
  --disable-dev-shm-usage \
  "$URL" &

# Keep container alive
tail -f /dev/null
