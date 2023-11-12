if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rkm563/Highfilter.git /Highfilter 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Highfilter 
fi
cd /Highfilter 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
