if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Itssaravanakrish/broadcastmongo.git /broadcastmongo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /broadcastmongo
fi
cd /broadcastmongo
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
