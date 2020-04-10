<?php

session_start();
// config File
require_once 'config.php';

require_once 'helpers/sustem_helper.php';
// Autoloader
function __autoload($class_name) {
    require_once 'lib/' .$class_name. '.php';
}

