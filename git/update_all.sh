#!/bin/bash

# Inspired by https://gist.github.com/douglas/1287372

# Let the person running the script know what's going on.
echo -e "\n\033[1mPulling in latest changes for all repositories...\033[0m\n"

# Find all git repositories and update it to the master latest revision
for i in $(find . -name ".git" | cut -c 3-); do

    echo -e "\n\033[33m"$i"\033[0m"

    # We have to go to the .git parent directory to call the pull command
    cd $(echo $i | rev | cut -c 5- | rev)

    # Finally update master
    git checkout master && git pull origin master && git checkout -

    # Let's get back to original dir
    cd -
done

echo -e "\n\033[32mDone!\033[0m\n"