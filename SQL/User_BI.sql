CREATE USER 'bi_user'@'localhost'
IDENTIFIED WITH mysql_native_password
BY '1234';

GRANT SELECT ON ecommerce_db.* TO 'bi_user'@'localhost';

FLUSH PRIVILEGES;