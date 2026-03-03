#!/usr/bin/bash

poetry run uvicorn brigid.asgi:app --host 0.0.0.0 --port 8000 --workers 1 --reload --reload-dir '../content'  --reload-include '*'
