# GiNo (Gitlab <-> Notion)

Notion has much better UX than GitLab for creating different kind of view from
your tasks/issue.

GiNo create a bridge between Gitlab and Notion. It copy gitlab issues to a
Notion Task database.

## Develop

This project uses `uv`.

1. Create `.env` file with following details.

```
NOTION_ACCESS_TOKEN = secret_ladidadadumdum
GITLAB_URL = "https://gitlab.example.com"
GL_GROUP_TOKEN = <gl_token>
TASK_DATABASE_ID = <notion_database_task>
NOTION_ACCESS_TOKEN = <notion_access_token>
```

1. Run `uv run gino run-once`
