`TASK_SETTINGS_MODULE` or `DJANGO_SETTINGS_MODULE`, default is `task.settings`

`task.settings` `DATABASE` variables:

variable|environment value|default value
-|-|-
`ENGINE`|`TASK_ENGINE`|`django.db.backends.postgresql_psycopg2`
`NAME`|`TASK_DBNAME`|`tasks`
`USER`|`TASK_USERNAME`|`$USER`
`PASSWORD`|`TASK_PASSWORD`|`''`
`HOST`|`TASK_HOST`|`localhost`
`PORT`|`TASK_PORT`|`5432`

or use custom `TASK_SETTINGS_MODULE`/`DJANGO_SETTINGS_MODULE` module:

```bash
export TASK_SETTINGS_MODULE="task_settings" # site-packages/task_settings.py
```


