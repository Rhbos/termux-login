#!/data/data/com.termux/files/usr/bin/bash

pkg install python
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/
clear

#TODO: hide input
read -p "Cyber-king-squad-team Enter new password: " passone;
read -p "cyber-king-squad-team Repeat password: " passtwo;

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
	echo 'cyber-king-squad Login installed'

elif [ $passone != $passtwo ];
then
	echo 'Password dont match'
fi
