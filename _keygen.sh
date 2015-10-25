ssh-keygen -t rsa -f $HOME/.ssh/id_rsa -q -N ""
echo "public key:"
cat $HOME/.ssh/id_rsa.pub
