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

```
docker exec CONTAINER_NAME_OR_ID send-command gamerule dofiretick false
```

```
docker exec CONTAINER_NAME_OR_ID send-command gamerule mobGriefing false 
```

```
docker exec CONTAINER_NAME_OR_ID send-command gamemode survival USER_NAME_OR_ID
```

