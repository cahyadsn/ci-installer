#!/bin/sh

## Part of CodeIgniter Composer Installer
##
## @author     Kenji Suzuki <https://github.com/cahyadsn>
## @license    MIT License
## @copyright  2017 Cahya DSN
## @link       https://github.com/cahyadsn/ci-installer

cd `dirname $0`/..

php -S 127.0.0.1:8000 -t public/ bin/router.php
