# CheckServices
[![Build Status](https://travis-ci.org/colterd/CheckServices.svg?branch=master)](https://travis-ci.org/colterd/CheckServices)

Debian Jessie (8) Check Services Script
Probably also compatible with most other Ubuntu-distros.

For the e-mail feature to work, you need mailx installed on your system.

The script will still execute without the e-mail portion, you just won't get notified.

Crontab to check every minute if service is up/down:

* * * * * /path/to/script
