#!/bin/bash

BITCOINCLI=/usr/bin/zcash-cli
MEMPOOLHOME=/home/mempool/mempool

cd $MEMPOOLHOME
$BITCOINCLI getrawmempool true | perl mempool-sql.pl

./mkdata.sh
