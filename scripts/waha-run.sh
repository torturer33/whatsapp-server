#!/bin/bash
set -e
echo "Starting WAHA..."

docker run -d \
    --restart=always \
    --name waha \
    -p 3000:3000/tcp \
    -v ./.sessions:/app/.sessions \
    -v ./.media:/app/.media \
    --env WHATSAPP_API_KEY=321 \
    --env WAHA_DASHBOARD_USERNAME=serhat \
    --env WAHA_DASHBOARD_PASSWORD=cakcuk33 \
    --env WAHA_LOG_FORMAT=PRETTY \
    --env WAHA_LOG_LEVEL=info \
    --env WHATSAPP_DEFAULT_ENGINE=WEBJS \
    --env WHATSAPP_RESTART_ALL_SESSIONS=True \
    --env WAHA_PRINT_QR=False \
    --env WHATSAPP_FILES_LIFETIME=0 \
    --env WHATSAPP_FILES_FOLDER=/app/.media \
    devlikeapro/waha:latest

echo "WAHA started."
