#!/bin/bash          

# vex-bp-claim, a simple bash script to claim block producer & voting rewards 
# on VEXANIUM blockchain.
# 
# (C) Honest Mining <engineering@honestmining.com>, 2019

# Script Variables 
# - change executable to hard path if locate is not available
# - claim log file default to user home directory
EXECUTABLE=`locate cleos`
LOGFILE="$HOME/claim_log.txt" 

# User Variables
# - adjust wallet password, broadcaster node & blockproducer name as necessary
WALLET_PWD="***VEX_WALLET_PASSWORD_HERE***"
BROADCASTER_NODE="http://209.97.162.124:8080"
BLOCKPRODUCER_NAME="honestmining"

claim() {
    if [ ! -f "$LOGFILE" ]
    then
        touch $LOGFILE
    fi
    
    echo $'\r\n' >>  $LOGFILE 2>&1
    date >> $LOGFILE 2>&1
    $EXECUTABLE wallet unlock --password $WALLET_PWD >> $LOGFILE 2>&1
    $EXECUTABLE --url $BROADCASTER_NODE system claimrewards $BLOCKPRODUCER_NAME >> $LOGFILE 2>&1
    $EXECUTABLE wallet lock >> $LOGFILE 2>&1
}

claim
