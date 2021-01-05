# GitCloner
Automation files for git cloning projects


Call the respective file for your operating system
clone.sh for linux (the only operating system you should really be using)
clone.bat for windows (booooo! :bug:)

The file can be opened two ways
1. bash clone.sh repoToClone
2. bash clone.sh

1 will clone that file without going through the cli gui
2 will open up the cli gui
 

In order to get this working for your repos, change the link at the bottom to point to your repos
Where it says 'KallumP' change that to 'Your-username'


The linux bash file will use the SSH keys, this means that you will need to have an ssh key in your GitHub account
https://docs.github.com/en/github-ae@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh

Future updates
Second input to define what github profile to clone the repo from
