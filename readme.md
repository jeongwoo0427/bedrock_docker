# Minecraft bedrock server docker


## Server start

```bash
docker compose up
```

---

## Show Logs

```bash
docker compose logs -f
```

---

## Executing server Commands

[Example 1]
```
docker exec CONTAINER_NAME_OR_ID send-command gamerule dofiretick false
```

[Example 2]
```
docker exec CONTAINER_NAME_OR_ID send-command gamemode survival USER_NAME_OR_ID
```

