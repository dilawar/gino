# GiNo (Gitlab <-> Notion)

GiNo create a bridge between Gitlab and Notion.

## How to run

- Create `.env` file with following details.

```
NOTION_ACCESS_TOKEN = secret_ladidadadumdum 
GITLAB_URL = "https://gitlab.example.com" 
GL_GROUP_TOKEN = <gl_token>
TASK_DATABASE_ID = <notion_database_task>
NOTION_ACCESS_TOKEN = <notion_access_token>
```

- Run `gino run-once`
