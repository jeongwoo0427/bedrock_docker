#!/bin/sh

BACKUP_DIR="/backups/monthly"
WORLD_DIR="/data"
MAX_BACKUPS=6

mkdir -p "$BACKUP_DIR"

# timestamp (YYYY-mm-dd_HH-MM)
TIME=$(date +"%Y-%m-%d_%H-%M")
BACKUP_FILE="$BACKUP_DIR/world_monthly_$TIME.zip"

echo "[Backup] Creating backup: $BACKUP_FILE"

# 월드 폴더 zip 압축
zip -r "$BACKUP_FILE" "$WORLD_DIR" >/dev/null 2>&1

echo "[Backup] Backup created."

# ===== 백업 파일 개수 관리 =====
COUNT=$(ls -1 "$BACKUP_DIR"/*.zip 2>/dev/null | wc -l)

if [ "$COUNT" -gt "$MAX_BACKUPS" ]; then
    REMOVE_COUNT=$((COUNT - MAX_BACKUPS))

    echo "[Backup] Backup limit exceeded ($COUNT). Removing $REMOVE_COUNT oldest backups."

    # 오래된 순으로 정렬 후 삭제
    ls -1t "$BACKUP_DIR"/*.zip | tail -n "$REMOVE_COUNT" | while read FILE; do
        echo "[Backup] Removing: $FILE"
        rm -f "$FILE"
    done
fi

echo "[Backup-monthly] Done."
