#!/bin/bash

set -eu

docker run -it --rm -v "$(pwd)":/app --entrypoint=/bin/bash --workdir=/app --expose=5000 --publish=5000:5000 node