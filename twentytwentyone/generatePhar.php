<?php
    //Create the phar
    $phar = new Phar('twentytwentyone.phar', 0, 'twentytwentyone.phar');
    //Build
    $phar->buildFromDirectory(dirname(__FILE__));
    //Generate and set stub
    $phar->setStub($phar->createDefaultStub('cli/index.php', 'www/index.php'));
    
?>
