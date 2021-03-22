!#/bin/sh
read -p "whats the name of your directory after home and be case sensitive :" craig
read -p "whats the name of your file :" filename 

homedir=/home/$craig/Dev2/HelloWorld
path=/home/$craig/Dev2

cd $path

mkdir $filename && cd $filename

cp $homedir/CMakeLists.txt $path/$filename
cp $homedir/build.sh $path/$filename
cp -r $homedir/src $path/$filename

chmod +x CMakeLists.txt
chmod +x build.sh

cd $path/$filename

sed -i "s/HelloWorld/$filename/g" CMakeLists.txt

./build.sh


