#!/bin/sh

cd `dirname $0`
cd ..

# Install translations
php bin/install.php translations develop

# Install Roave Security Advisories
composer require roave/security-advisories:dev-master

# Install Codeigniter Matches CLI
php bin/install.php matches-cli master

# Install Modular Extensions - HMVC for Codeigniter 3.*
php bin/install.php modular-extensions-hmvc codeigniter-3.x

# Install Ion-Auth 2 Authorization Module for Codeigniter
php bin/install.php ion-auth 2

# Install CodeIgniter Rest Server
php bin/install.php restserver 2.7.2

# Install CodeIgniter Developer Toolbar
php bin/install.php codeigniter-develbar master