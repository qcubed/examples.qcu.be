#!/bin/sh
./refreshFromGit
./runCodegen
./installPlugins
chown www-data:www-data ../htdocs/includes/error_log/
chown www-data:www-data ../htdocs/assets/_core/php/examples/other_controls/cache/
chown www-data:www-data ../htdocs/assets/_core/images/cache/
chown www-data:www-data ../htdocs/assets/_core/php/examples/image_browser/cache/
