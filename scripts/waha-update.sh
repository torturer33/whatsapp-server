set -e
echo "Updating WAHA..."
docker pull devlikeapro/waha

echo "Stopping the current container..."
docker stop waha || true
echo "Removing the current container..."
docker rm waha || true

echo "Running WAHA..."
sh ./waha-run.sh
