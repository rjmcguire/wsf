--TEST--
RetUri_null(NULL);
--FILE--
<?php

try {

   $wsdl = file_get_contents('config/SimpleDataTypesWsdlDoclitB.txt');
    $client = new WSClient(array("wsdl" => $wsdl));
    
    $proxy = $client->getProxy();
    $val =  $proxy->RetUri(NULL);
    echo $val."\n";

} catch (Exception $e) {

        if ($e instanceof WSFault) {
                printf("Soap Fault: %s\n", $e->Code);
                printf("Soap Reason: %s\n", $e->Reason);
        } else {
                printf("Message = %s\n",$e->getMessage());
        }
}
?>
--EXPECT--