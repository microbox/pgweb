FROM    microbox/scratch

ADD     pgweb_linux_amd64/pgweb          /usr/bin/pgweb
ADD     run.sh                           /root/run.sh

ENV     PGWEB_USER  microbox
ENV     PGWEB_PASS  **None**

EXPOSE  8080

CMD ["/root/run.sh"]
