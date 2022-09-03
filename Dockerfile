FROM irinesistiana/mosdns:latest

COPY ./content /etc/mosdns

ADD hosts /hosts
COPY hosts /hosts
ADD crontab.txt /crontab.txt
ADD script1.sh /script1.sh
ADD script2.sh /script2.sh

ENV PORT=8080
ENV DOH_PATH=/dns-query

EXPOSE 8080

ENTRYPOINT [ "sh","/etc/mosdns/entrypoint.sh" ]
