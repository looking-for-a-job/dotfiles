#!/usr/bin/env bash
{ set +x; } 2>/dev/null

psql -c "SELECT setting FROM pg_settings WHERE name = 'data_directory';" postgres
