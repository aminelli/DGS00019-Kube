-- kubectl exec -it mysql-slave-0 -- mysql -u root -p
-- kubectl exec -it mysql-slave-1 -- mysql -u root -p

CHANGE MASTER TO
  MASTER_HOST='mysql-master',
  MASTER_USER='repl',
  MASTER_PASSWORD='replpwd',
  MASTER_LOG_FILE='mysql-bin.000001',
  MASTER_LOG_POS=4;

START SLAVE;
SHOW SLAVE STATUS\G;