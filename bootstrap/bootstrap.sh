# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo 'Updating OS'
apt-get -y update >/dev/null 2>&1
#apt-get -y dist-upgrade
install 'development tools' build-essential

install Git git
install SQLite sqlite3 libsqlite3-dev
#install memcached memcached
#install Redis redis-server
#install RabbitMQ rabbitmq-server
install NodeJS nodejs

echo 'all set, rock on!'
