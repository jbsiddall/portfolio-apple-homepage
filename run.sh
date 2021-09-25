#!/bin/bash

set -eu

docker run -it --rm -v "$(pwd)":/app --entrypoint=/bin/bash --expose=5000 --publish=5000:5000 node