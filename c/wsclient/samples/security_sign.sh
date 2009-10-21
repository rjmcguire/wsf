#!/bin/bash
if test -z $WSFC_HOME; then 
    WSFC_HOME=$PWD/../../..
fi
$WSFC_HOME/bin/wsclient --soap --no-mtom --timestamp --sign-body --key $WSFC_HOME/samples/src/rampartc/data/keys/ahome/alice_key.pem --certificate $WSFC_HOME/samples/src/rampartc/data/keys/ahome/alice_cert.cert --recipient-certificate $WSFC_HOME/samples/src/rampartc/data/keys/ahome/bob_cert.cert  http://localhost:9090/axis2/services/sec_echo <$WSFC_HOME/samples/bin/wsclient/data/echo.xml
