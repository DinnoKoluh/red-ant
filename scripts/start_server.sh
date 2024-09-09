#!/bin/sh
echo "Starting server..."

cd /${SERVICE_NAME}/src
python -m uvicorn main:app --host $IP_ADDRESS --port $PORT --log-level 'debug' --use-colors --reload