FROM alpine:latest

RUN apk add --no-cache zip tzdata bash

COPY backup_shortly.sh /usr/local/bin/backup_shortly.sh
COPY backup_daily.sh /usr/local/bin/backup_daily.sh
COPY backup_monthly.sh /usr/local/bin/backup_monthly.sh
COPY crontab.txt /etc/crontabs/root


RUN chmod +x /usr/local/bin/backup_shortly.sh
RUN chmod +x /usr/local/bin/backup_daily.sh
RUN chmod +x /usr/local/bin/backup_monthly.sh

CMD ["crond", "-f", "-l", "2"]
