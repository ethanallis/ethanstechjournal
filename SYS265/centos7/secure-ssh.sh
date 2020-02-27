#secure-ssh.sh
#author ethanallis
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo "Creating new no-password SSH user!"
read -p "Enter name of new user: " x
sudo useradd -m -d /home/$x -s /bin/bash $x
sudo cp /root/ethanstechjournal/SYS265/public-keys/id_rsa.pub /home/$x/.ssh/authorized_keys
sudo chmod 700 /home/$x/.ssh
sudo chmod 600 /home/$x/.ssh/authorized_keys
echo "Created new no-password SSH user $x"
