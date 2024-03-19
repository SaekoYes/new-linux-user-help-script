#Baby's first code commenting fr
echo "What's your name:"
read name

#get the user's actual username and compare to inputted name
user_name=$(getent passwd $USER | cut -d: -f5 | cut -d, -f1)
if [ "$name" = "$user_name" ]; then
    echo "welcome :3"
else
    echo "liar"
fi

#Wow how friendly
echo "Hello,$user_name, This simple script show your around your new linux terminal, it might seem scary at first but i promise you you'll feel right at home."
sleep 2s

# Detect the operating system
[[ -f /etc/os-release ]];
    . /etc/os-release
    OS=$NAME
echo "You are using $NAME. Nice choice."

if [ -n "$(command -v apt-get)" ]; then
    echo "Your package manager is apt"
    sleep 1s
    echo "Lets start by updating our system"
    echo "Run: sudo apt-get update"

elif [ -n "$(command -v dnf)" ]; then
    echo "Your package manager is dnf"
    sleep 1s
    echo "Lets start by updating our system"
    echo "Run: sudo dnf update"

elif [ -n "$(command -v pacman)" ]; then
    echo "Your package manager is pacman"
    sleep 1s
    echo "Lets start by updating our system"
    echo "Run: sudo pacman -Syu"

elif [ -n "$(command -v apk)" ]; then
    echo "Your package manager is the alpine package keeper"
    sleep 1s
    echo "Lets start by updating our system"
    echo "Run: sudo apk upgrade"

else
    echo "Can't detect your package manager. That's fine, you can always look it up on the internet."
fi