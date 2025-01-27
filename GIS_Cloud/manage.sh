#!/bin/sh
#
#

# Allow only root execution
#if [ `id|sed -e s/uid=//g -e s/\(.*//g` -ne 0 ]; then
#    echo "This script requires root privileges"
#    exit 1
#fi

help() {
        echo "usage: $0 help"
  echo "       $0 (start|stop|restart|initiate)"
        cat <<EOF

help       - this screen
initiate   - initial container start
start      - start the containers
stop       - stop  the containers
status     - show container status

EOF

}

if [ "x$1" = "help" ]; then
  help
elif [ "x$2" = "x" ]; then
  # Operation over all the services
  if [ "x$1" = "xinitiate" ] || [ "x$1" = "xstart" ] || [ "x$1" = "xstop" ]  || [ "x$1" = "xstatus" ]; then
    echo "$1ing services.." | sed 's/^./\u&/g'

    if [ "x$1" = "xinitiate" ]; then
      docker compose up

    elif [ "x$1" = "xstop" ]; then
      docker stop $(docker ps -a -q)

    elif [ "x$1" = "xstart" ]; then
      docker start $(docker ps -a -q)

    elif [ "x$1" = "xstatus" ]; then
      docker ps -a

    else
      help
    
    fi
    exit $?

  else
    help
    exit 1
  fi

fi


