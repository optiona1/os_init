#/bin/bash                                                                          
                                                                                    
# This script need root power

read -p "Enter account: " account

# add current to sudoer
echo "update $account user power to sudo"
usermod -aG sudo $account > /dev/null
echo '%sudo ALL=(ALL) ALL' >> /etc/sudoers 

echo done
