#!/bin/bash
python3 app.py

export GIT_SSH_COMMAND="ssh -i /home/pi/growlab/.ssh/id_rsa"

cp html/* ./docs/

git add .

git commit -s -m "Update images at `date`"
git pull origin main --rebase
git push origin main

