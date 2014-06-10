#!/bin/sh
./refreshFromGit
./runCodegen
./installPlugins
chown www-data:www-data ../htdocs/includes/error_log/
