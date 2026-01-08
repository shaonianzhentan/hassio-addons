#!/usr/bin/with-contenv bashio

echo "Starting Chromium with debug port..."

chromium \
  --headless=new \
  --remote-debugging-address=0.0.0.0 \
  --remote-debugging-port=9222 \
  --no-sandbox \
  --disable-gpu \
  --disable-dev-shm-usage \
  about:blank

echo "Chromium exited, container will stop."
