if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pranav2335/DQ-the-file-donor2.git /DQ-the-file-donor2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-the-file-donor2
fi
cd /DQ-the-file-donor2
pip3 install -U -r requirements.txt
echo "Starting DQ-the-file-donor2...."
python3 bot.py
