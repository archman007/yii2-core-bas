<?php

return [
    'class' => 'yii\db\Connection',
'dsn' => 'mysql:host=localhost;dbname=bcswebtoolsx',
'username' => 'bcs',
'password' => 'Peace007!amb',
'charset' => 'utf8',
'attributes' => [
    PDO::ATTR_PERSISTENT => true,  // optional, for persistent connections
],
];
