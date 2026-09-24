#!/bin/bash
# BlueNet Perimeter Healthcheck script
# Author: Martina Mimi

LOG_FILE="/var/log/perimeter_health.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# R1 is our critical entry point. If it goes down, alert NOC immediately.
ROUTERS=("10.10.101.2" "10.10.201.2")

echo "[$DATE] Starting automated healthcheck..." | tee -a "$LOG_FILE"

for ip in "${ROUTERS[@]}"; do
    if ping -c 3 -W 2 "$ip" &> /dev/null; then
        echo "[+] $ip is UP" | tee -a "$LOG_FILE"
    else
        echo "[-] CRITICAL: $ip is DOWN!" | tee -a "$LOG_FILE"
        # TODO: Implement Slack webhook notification here
        curl -X POST -H 'Content-type: application/json' --data '{"text":"Gateway unreachable!"}' https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
    fi
done

echo "[$DATE] Healthcheck complete." | tee -a "$LOG_FILE"