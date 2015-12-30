#!/bin/bash
java -version &>/dev/null || { echo "Java is not installed. Please install java to run this tool"; exit 1; }
export PATH="$PATH:$PWD/other"
rm -rf out &>/dev/null
cp -a other/backup out
echo "Custom LWP 2.6
Thanks : andrew121 for the app this script modifies
Thanks : olivvv59 for the added # of images
Thanks : danogentili for linux version (http://daniil.it)
---------------------------------------------------
Place images in placeimages/images folder and place the app icon in placeimages/icon.png
Make sure the images are the same resolution as your device for optimal results
You can use up to 300 images (n01.png...n300.png)
The images must be in png format.
Press enter when you're done."
read
echo
read -p "Enter the name for this live wallpaper. This is shown in the lwp choice menu. " name
name=$(printf "%q" "$name")
echo 

read -p "Enter the description for this live wallpaper. This is shown in the lwp choice menu. " desc
desc=$(printf "%q" "$desc")
echo

read -p "Enter the package name for this live wallpaper. This should be one word.
No spaces or fancy characters please. " pkgname
pkgname=$(printf "%q" "$pkgname")

n=0
for f in placeimages/images/*;do n=$(($n+1));done
n=$(printf "%x" $n)

sed 's/suvbsib/'$pkgname'/g' -i out/smali/com/custom/lwp/suvbsib/*.smali out/res/xml/wallpaper.xml out/AndroidManifest.xml

mv out/smali/com/custom/lwp/suvbsib out/smali/com/custom/lwp/$pkgname
sed -i 's/appname/'$name'/g' out/AndroidManifest.xml
sed -i 's/dscrp/'$desc'/g' out/res/values/strings.xml
sed -i 's/const\/16 v1, 0x31/const\/16 v1, 0x'$n'/g' out/smali/com/custom/lwp/$pkgname/LiveWallpaperPainting\$OutRunEngine.smali


counter=1
placeholder=0

until [ $counter = 301 ]; do 
	[ ! -f "out/res/drawable-hdpi-v4/n$placeholder"$counter".png" ] && cp "other/ph.png" "out/res/drawable-hdpi-v4/n$placeholder"$counter".png"
	counter=$(($counter + 1))
	[ $counter = 10 ] && placeholder=
done

cp placeimages/images/* "out/res/drawable-hdpi-v4/"

echo "
Building Apk"

cd other
java -jar apktool.jar b ../out "$pkgname-unsigned.apk"
echo "
Signing Apk"

java -jar signapk.jar -w testkey.x509.pem testkey.pk8 "$pkgname-unsigned.apk" "$pkgname-signed.apk"
rm "$pkgname-unsigned.apk"

cd ..
mv other/$pkgname-signed.apk $pkgname-signed.apk
echo "
Done.
"

read -p "Would you like to install this apk? 
Ur device must be connected to ur pc and adb must be in ur PATH (y/n). " -n 1 -r
[[ $REPLY =~ ^[Yy]$ ]] && adb install -r $pkgname"-signed.apk"
echo
exit

