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

- Fire cannot burn wood or other object
```
docker exec CONTAINER_NAME_OR_ID send-command gamerule dofiretick false
```

- Show coordinates always
```
docker exec CONTAINER_NAME_OR_ID send-command gamerule showcoordinates true 
```

- Prevent the creeper from exploding your world 
```
docker exec CONTAINER_NAME_OR_ID send-command gamerule mobGriefing false 
```

- Keep inventory and level when you are died
```
docker exec CONTAINER_NAME_OR_ID send-command gamerule keepinventory true 
```

- Give survival mode to your friends
```
docker exec CONTAINER_NAME_OR_ID send-command gamemode survival USER_NAME_OR_ID
```

- Set ticking area where you want
```
docker exec CONTAINER_NAME_OR_ID send-command tickingarea add x1 y1 z1 x2 y2 z2 AREA_NAME
```

- Set ticking area where you want
```
docker exec CONTAINER_NAME_OR_ID send-command tickingarea add circle x1 y1 z1 chunkSize(1~4) AREA_NAME
```
