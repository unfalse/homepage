#!/usr/bin/env bash
set -euo pipefail

# Deploy the latest main branch to the production server.
# Runs the pull remotely over a single SSH session.

HOST="homepagedo"
REMOTE_DIR="/var/www/unfalsecoding.net/"
BRANCH="main"

echo "Deploying to ${HOST}:${REMOTE_DIR} (branch ${BRANCH})..."

ssh "$HOST" "cd ${REMOTE_DIR} && git pull origin ${BRANCH}"

echo "Done."
