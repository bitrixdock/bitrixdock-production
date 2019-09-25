DS=`date +%Y%m%d` && \
mysqldump -h mysql -uroot -p12345 mysite > /backup/db$DS.sql && \
echo 1 && \
exit
