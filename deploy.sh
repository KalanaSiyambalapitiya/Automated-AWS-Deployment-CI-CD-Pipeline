#!/bin/bash

echo "Starting deployement"
cd /home/ubuntu/Automated-AWS-Deployment-CI-CD-Pipeline  || exit

echo "Pulling latest code..."
git pull origin main

echo "Installing dependencies..."
npm install

echo "ReStarting App"
pkill node || true

echo "node Starting App"
nohup node index.js > app.log 2>&1 &

echo "Deployment compleate "