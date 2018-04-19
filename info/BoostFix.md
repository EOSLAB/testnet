$ cd ~
$ mkdir boost
$ cd boost/
$ wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
$ bzip2 -d boost_1_66_0.tar.bz2
$ tar -xvf boost_1_66_0.tar
$ cd boost_1_66_0/
$ sudo apt-get update
$ sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev libboost-all-dev
$ ./bootstrap.sh —prefix=~/opt/boost_1_66_0/
$ ./b2
$ cd stage/lib/
$ cp libboost_system.a ~/opt/boost_1_66_0/lib/.
$ cp libboost_chrono.a ~/opt/boost_1_66_0/lib/.
$ cd ~/eos
$ ./eosio_build.sh