read -p "Please specify the directory you would like to install PHPMyAdmin at: " installpath
echo

echo "You have defined the install path as $installpath"
read -p "Is this correct? y/n " yesno
echo

if [ $yesno == "y" ]
    then
    echo
    else
    echo
fi

if [ $yesno == "n" ]
    then
    echo "Canceling..."
    exit 0
    echo
fi

cd $installpath
rm -rf version.txt
wget https://www.phpmyadmin.net/home_page/version.txt
wget $(head -3 version.txt | tail -1)
unzip phpMyAdmin*
rm -rf phpMyAdmin*.zip
cd phpMyAdmin*
mv * ..
