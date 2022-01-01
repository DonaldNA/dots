echo "Checking if z.sh exists..."

if [ ! -d /usr/local/bin ]
then
    echo "Creating backup dir"
    mkdir /usr/local/bin
fi

if [ ! -f /usr/local/bin/z.sh ]
then
    echo "Getting z.sh"
    wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O /usr/bin/local/z.sh
fi
