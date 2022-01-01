echo "Checking if z.sh exists..."

if [ ! -d /usr/bin/local/ ]
then
    echo "Creating backup dir"
    mkdir /usr/bin/local
fi

if [ ! -f /usr/bin/local/z.sh ]
then
    echo "Getting z.sh"
    wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O /usr/bin/local/z.sh
fi