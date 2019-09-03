# fetch configs
    git clone --no-checkout git@github.com:ACCOUNTNAME/REPOSITORYNAME.git ~/configs
    cd ~/configs
    git config core.worktree "../../"
    git reset --hard origin/master # fetch commited configuration files and overwrite if exists 
    echo "gitdir: /home/USERNAME/configs/.git" > ~/.git

# update configs
    cd ~/configs
    git pull

# change configs
    cd ~/configs
    git add --update # stages modifications and deletions, without new files
    git add NEWFILES...
    git commit -m "MESSAGE"
    git push origin master

# creation process
    curl -u USERNAME https://api.github.com/user/repos -d '{"name": "REPOSITORYNAME"}'
    cd ~
    mkdir configs
    cd ~/configs
    git init
    git config core.worktree "../../"
    git add CONFIGURATIONFILES...
    git commit -m "initial commit"
    echo "gitdir: /home/USERNAME/configs/.git" > ~/.git
    git remote add origin git@github.com/ACCOUNTNAME/REPOSITORYNAME.git
    git push origin master
