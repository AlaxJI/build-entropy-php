for i in `find src -name config.nice -maxdepth 4` 
do
echo `dirname $i`
rm -rf `dirname $i`
done


for i in `ls -d src/xhprof*`
do
echo  $i
rm -rf $i
done

for i in `ls -d src/php-*`
do
echo  $i
rm -rf $i
done

rm -rf download/php-*
rm -rf download/master.tar.gz

rm ~/.pearrc 

#rm /usr/local/php5/libphp5.so
rm /usr/local/php7.3.8/libphp7.so
rm -rf /usr/local/php7.3.8/lib/php
rm -rf /usr/local/php7.3.8/php.d/
rm -rf /usr/local/php7.3.8/bin/php*

