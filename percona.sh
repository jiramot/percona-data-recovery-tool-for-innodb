mkdir -p /percona
cd /percona
wget http://www.ipfusions.com/setup/percona-data-recovery-tool-for-innodb-0.5.tar.gz
tar xvfz percona-data-recovery-tool-for-innodb-0.5.tar.gz
cd percona-data-recovery-tool-for-innodb-0.5
cd mysql-source
./configure
cd ..
make
