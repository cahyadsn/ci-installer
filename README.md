# CodeIgniter v3.* Composer Installer

This package installs the offical [CodeIgniter](https://github.com/bcit-ci/CodeIgniter) (version `3.1.*`) with secure folder structure via Composer.

You can update CodeIgniter system folder to latest version with one command.

## Folder Structure

```
codeigniter/
├── application/
├── composer.json
├── composer.lock
├── public/
│   ├── .htaccess
│   └── index.php
└── vendor/
    └── codeigniter/
        └── framework/
            └── system/
```

## Requirements

* PHP version 5.6 or newer is recommended. It should work on 5.3.7 as well, but we strongly advise you NOT to run such old versions of PHP, because of potential security and performance issues, as well as missing features.
* `composer` command (See [Composer Installation](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx))
* Git

## How to Use

### Install CodeIgniter

```
$ composer create-project cahyadsn/ci-installer codeigniter
```

Above command installs `public/.htaccess` to remove `index.php` in your URL. If you don't need it, please remove it.

And it changes `application/config/config.php`:

~~~
$config['composer_autoload'] = FALSE;
↓
$config['composer_autoload'] = realpath(APPPATH . '../vendor/autoload.php');
~~~

~~~
$config['index_page'] = 'index.php';
↓
$config['index_page'] = '';
~~~

#### Install Translations for System Messages

If you want to install translations for system messages:

```
$ cd /path/to/codeigniter
$ php bin/install.php translations 3.1.11
```

#### Install Third Party Libraries

[Codeigniter Gen CLI](https://github.com/cahyadsn/ci-gen):

```
$ php bin/install.php gen-cli master
```

[Modular Extensions (HMVC) for CodeIgniter 3](https://github.com/codinghamster/codeigniter-modular-extensions-hmvc/):

```
$ php bin/install.php modular-extensions-hmvc 1.1.0
```

[Ion Auth](https://github.com/benedmunds/CodeIgniter-Ion-Auth):

```
$ php bin/install.php ion-auth 3
```

[Ion Auth ACL](https://github.com/weblogics/Codeigniter-Ion-Auth-ACL):

```
$ php bin/install.php ion-auth-acl master
```

[CodeIgniter Rest Server](https://github.com/chriskacerguis/codeigniter-restserver):

```
$ php bin/install.php restserver 3.1.4
```
[CodeIgniter Log](https://github.com/cahyadsn/ci-log):

```
$ php bin/install.php ci-log master
```
[ci-datatables](https://github.com/cahyadsn/ci-datatables):

```
$ php bin/install.php ci-datatables master
```
[CodeIgniter Developer Toolbar](https://github.com/JCSama/CodeIgniter-develbar):

```
$ php bin/install.php codeigniter-develbar master
```

### Run PHP built-in server (PHP 5.4 or later)

```
$ cd /path/to/codeigniter
$ bin/server.sh
```

### Update CodeIgniter

```
$ cd /path/to/codeigniter
$ composer update
```

You must update files manually if files in `application` folder or `index.php` change. Check [CodeIgniter User Guide](http://www.codeigniter.com/user_guide/installation/upgrading.html).

## Reference

* [Composer Installation](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx)
* [CodeIgniter](https://github.com/bcit-ci/CodeIgniter)
* [Translations for CodeIgniter System](https://github.com/bcit-ci/codeigniter3-translations)
