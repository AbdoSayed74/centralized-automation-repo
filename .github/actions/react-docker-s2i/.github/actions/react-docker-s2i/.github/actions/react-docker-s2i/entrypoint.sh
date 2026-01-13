#!/bin/sh
set -e
echo "Building React App..."
npm install
npm run build
echo "Build complete!"
