### Name

- microbox/pgweb

### Version

- 0.5.1

### Size

-  ~ 15.19 MB

### Usage


Start pgweb with postgres url

```bash
docker run --rm -it -p 8080:8080 -e URL="postgres://user:password@host:port/database?sslmode=[mode]" microbox/pgweb
```

Start pgweb with basic auth

```bash
docker run --rm -it -p 8080:8080 -e PGWEB_USER=pgweb -e PGWEB_PASS="microbox" microbox/pgweb
```

Visit http://docker-ip:8080 to see the WebUI
