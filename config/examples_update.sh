echo 1
cd /root
rm -rf examples_scripts
echo 2
git clone https://github.com/olegabr/examples.qcu.be.git examples_scripts
echo 3

cp /var/www/examples.qcu.be/config/apache.conf.current examples_scripts/config/.
echo 4
cp /var/www/examples.qcu.be/config/configuration.inc.php examples_scripts/config/.
echo 5

rm -rf /var/www/examples.qcu.be/config/*
echo 6

cp -r examples_scripts/config/* /var/www/examples.qcu.be/config/
echo 7

cd /var/www/examples.qcu.be/config/
echo 8

chown www-data:www-data apache.conf.current
echo 9

chmod 664 apache.conf.current
echo 10

echo "./update.sh"
./update.sh
echo 11

