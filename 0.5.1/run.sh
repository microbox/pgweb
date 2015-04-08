#!/bin/ash

if [ "${PGWEB_PASS}" == "**Random**" ]; then
    unset PGWEB_PASS
fi

if [ "${PGWEB_PASS}" != "**None**" ]; then
    USER=${PGWEB_USER:-"microbox"}
    PASS=${PGWEB_PASS:-$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)}
    echo "========================================================================"
    echo "You can now connect to this pgweb server using:"
    echo ""
    echo "    User:  $USER"
    echo "    Pass:  $PASS"
    echo ""
    echo "========================================================================"
    if [ ! -z "${URL}" ]; then
        exec /usr/bin/pgweb --bind=0.0.0.0 --auth-user=$USER --auth-pass=$PASS --url $URL
    else
        exec /usr/bin/pgweb --bind=0.0.0.0 --auth-user=$USER --auth-pass=$PASS
    fi

else
    if [ ! -z "${URL}" ]; then
        exec /usr/bin/pgweb --bind=0.0.0.0 --url $URL
    else
        exec /usr/bin/pgweb --bind=0.0.0.0
    fi
fi


