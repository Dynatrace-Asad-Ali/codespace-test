export DYNATRACE_EXPORTER_OTLP_ENDPOINT=$(curl -s -X POST http://52.186.168.229:3800/dynatrace-url \
  -H "Content-Type: application/json" \
  -d "{\"password\": \"$WORKSHOP_PASSWORD\"}" | jq -r '.dynatrace_url')"/api/v2/otlp"

echo $DYNATRACE_EXPORTER_OTLP_ENDPOINT
export DYNATRACE_API_TOKEN=$(curl -s -X POST http://52.186.168.229:3800/dynatrace-token \
  -H "Content-Type: application/json" \
  -d "{\"password\": \"$WORKSHOP_PASSWORD\"}" | jq -r '.dynatrace_api_token')

export NVIDIA_API_KEY=$(curl -s -X POST http://52.186.168.229:3800/nvidia-key \
  -H "Content-Type: application/json" \
  -d "{\"password\": \"$WORKSHOP_PASSWORD\"}" | jq -r '.nvidia_api_key')

export TAVILY_KEY=$(curl -s -X POST http://52.186.168.229:3800/tavily-key \
  -H "Content-Type: application/json" \
  -d "{\"password\": \"$WORKSHOP_PASSWORD\"}" | jq -r '.tavily_api_key')
