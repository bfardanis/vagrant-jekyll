 #!/usr/bin/env bash

apt-get -y update

# Install dependencies 
apt-get -y install python-software-properties 
apt-get -y install build-essential 
apt-get -y nodejs 

#apt-get -y update

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm

# Install ruby 2.3.0
rvm use --default --install 2.3.0
rvm install 2.3.0-dev
ruby -v

# Install jekyll
gem install jekyll
gem install bundler
echo 'export PATH="$PATH:$HOME/.rvm/gems/ruby-2.3.0-dev/bin"' >> ~/.profile

cd $HOME
chmod +x runserve.sh


