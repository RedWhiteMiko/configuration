## you may need sudo permission to execute some commands or swith to root
# if installed old version by yum, remove it first
sudo yum remove tmux libevent libevent-devel libevent-headers

# install deps
sudo yum install -y gcc libevent libevent-devel kernel-devel make ncurses-devel

# create temp dir
mkdir -p /tmp/for-latest-tmux

# downloads libenvent and install
cd /tmp/for-latest-tmux/ && mkdir ./libenvent && cd ./libenvent
wget https://github.com/libevent/libevent/archive/release-2.1.8-stable.tar.gz
tar -zxvf release-2.1.8-stable.tar.gz
cd release-2.1.8-stable/
./configure && make
sudo make install

# downloads tmux and install
cd /tmp/for-latest-tmux/ && mkdir ./tmux && cd ./tmux
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar -zxvf tmux-2.3.tar.gz
cd tmux-2.3/
./configure && make
sudo make install

# kill the running tmux
# close your terminal window (flushes cached tmux executable)
# open new shell and check tmux version
pkill tmux
/usr/local/bin/tmux -V

# remove temp dir if needed
rm -rf /tmp/for-latest-tmux