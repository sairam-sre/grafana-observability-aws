#!/bin/bash

echo "Installing stress tool..."
sudo yum install stress -y

echo "Generating CPU load..."
stress --cpu 1 --timeout 300

echo "Done. CPU load test completed."
