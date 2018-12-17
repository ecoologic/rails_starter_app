#!/bin/bash

# Exit on fail
set -e

# Ensure all gems installed. Add binstubs to bin which has been added to PATH in Dockerfile.
bundle check || bundle install --binstubs="$BUNDLE_BIN"

# Uncomment the next line if you want to force bundle, for example if you removed a gem.
# bundle install --binstubs="$BUNDLE_BIN"

# Finally call command issued to the docker service
exec "$@"
