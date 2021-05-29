#!/usr/bin/env bash
{ set +x; } 2>/dev/null

psql -At -c "SELECT slug from task" tasks | xargs -I{} bash -l -c "appify $script ~/Applications/.Tasks/\$0.app \"\$(image \$0.png)\"" {}
