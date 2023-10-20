#update
sudo apt-get update

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts

# install npm
sudo apt-get install npm -y

# install pm2
npm install pm2@latest -g

# install mysql
sudo apt install mysql-client-core-8.0

# install deploy-agent
sudo su
sudo apt-get update
sudo apt-get install ruby-full

wget https://aws-codedeploy-ap-northeast-2.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

# installed check
node -v
npm -v
mysql