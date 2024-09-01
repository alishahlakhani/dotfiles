#!/bin/sh

echo "🐐 Setting up node packages"
# Install Node 16 and Node 18
fnm install 16
fnm install 18

# Set Node 18 as default
fnm default 18

pnpm setup

pnpm add -g npkill
