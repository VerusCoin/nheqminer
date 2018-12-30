#!/bin/sh
PoolHost=
Port=
PublicVerusCoinAddress=
WorkerName=
Threads=
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "$(PoolHost)":"$(Port)" -u "$(PublicVerusCoinAddress)"."$(WorkerName)" -t "$(Threads)" "$@"
