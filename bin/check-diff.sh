#!/bin/sh

## Part of CodeIgniter Composer Installer
##
## @author     Cahya DSN <https://github.com/cahyadsn>
## @license    MIT License
## @copyright  2017 Cahya DSN
## @link       https://github.com/cahyadsn/ci-installer

cd `dirname $0`
cd ..

diff -urN vendor/codeigniter/framework/application application
diff -u vendor/codeigniter/framework/index.php public/index.php
