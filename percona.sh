mkdir -p /percona
cd /percona
wget http://www.ipfusions.com/setup/percona-data-recovery-tool-for-innodb-0.5.tar.gz
tar xvfz percona-data-recovery-tool-for-innodb-0.5.tar.gz
cd percona-data-recovery-tool-for-innodb-0.5
cd mysql-source
./configure
cd ..
make

ln -s /percona/percona-data-recovery-tool-for-innodb-0.5/ibdconnect /bin/ibdconnect
ln -s /percona/percona-data-recovery-tool-for-innodb-0.5/innochecksum /bin/innochecksum
ln -s /percona/percona-data-recovery-tool-for-innodb-0.5/page_parser /bin/page_parser
ln -s /percona/percona-data-recovery-tool-for-innodb-0.5/constraints_parser /bin/constraints_parser

echo "alias ll='ls -lah'" >> ~/.bashrc
