Work in progress.
Aiming for a command api such as this...

$ ./cyber-dojo create-volume jon=https://github.com/JonJagger/cyber-dojo-languages.git

$ ./cyber-dojo up languages=jon
 
from a cyber-dojo server which will pull the repo and put it into a docker
volume named jon which will then used as the source of languages in the setup 
page.
