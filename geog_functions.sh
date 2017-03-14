#! /bin/bash
# Replace these defaults
GUSER=ucfacms
GATEWAY=arch
MACHINE=freetown
GPORT=9000
# Log in UCL Geography Linux cluster machine
geog () {
    ssh -t -Y ${3:-$GUSER}@${2:-$GATEWAY}.geog.ucl.ac.uk ssh -Y ${1:-$MACHINE}
}
# Tunnel into UCL Geography Linux cluster machine
geogport () {
    PORT=${1:-$GPORT}
    ssh -L $PORT:localhost:$PORT ${4:-$GUSER}@${3:-$GATEWAY}.geog.ucl.ac.uk ssh -L $PORT:localhost:$PORT -N ${2:-$MACHINE}
}

# Tunnel into UCL Geography Linux cluster machine
geogport () {
    PORT=${1:-$GPORT}
    ssh -L $PORT:localhost:$PORT ${4:-$GUSER}@${3:-$GATEWAY}.geog.ucl.ac.uk ssh -L $PORT:localhost:$PORT -N ${2:-$MACHINE}
}
