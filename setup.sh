# enviroment setup ether prod/qa-test/dev
SYSTEM_ENV=${1:-dev}

echo $SYSTEM_ENV

MYSQL_SECRET=$(grep MYSQL_SECRET .env.$SYSTEM_ENV | cut -d '=' -f 2-)
ACME_EMAIL=$(grep ACME_EMAIL .env.$SYSTEM_ENV | cut -d '=' -f 2-)
PHPMYADMIN_DOMAIN=$(grep PHPMYADMIN_DOMAIN .env.$SYSTEM_ENV | cut -d '=' -f 2-)


#echo $MYSQL_SECRET /n
sed 's/{{mysqlrootpwdbase64}}/$MYSQL_SECRET/g' secrets/00_phpmyadmin_secret.yaml.template > secrets/00_phpmyadmin_secret_$SYSTEM_ENV.yaml
echo $ACME_EMAIL /n
echo $PHPMYADMIN_DOMAIN /n
