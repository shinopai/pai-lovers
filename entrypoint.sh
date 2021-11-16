#!/bin/bash
set -e

rm -f /pai-lovers/tmp/pids/server.pid

exec "$@"