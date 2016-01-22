#!/bin/bash
java -version &>/dev/null || { echo "Java is not installed. Please install java to run this tool"; exit 1; }
aapt &>/dev/null || export PATH="$PATH:$PWD/other"
rm -rf out &>/dev/null

cp -a other/backup out

[ "$1" = "bashbot" ] && {
	error() { cd /tmp; rm -rf /tmp/$2; echo "I'm sorry, it seems an error occurred ($*). Please type /start to restart the process."; }
	mktmpdir() { rm -rf /tmp/$2 &>/dev/null; cp -a $PWD /tmp/$2; cd /tmp/$2; }
	echo "Custom LWP 2.6
Thanks : andrew121 for the app this script modifies
Thanks : olivvv59 for the added # of images
Thanks : danogentili for linux version and telegram bot (http://daniil.it)
Send me the app icon (preferrably square)."
	mktmpdir || error "couldn't create tmp dir"
	read icon
	convert $icon placeimages/icon.png || error "couldn't download icon" 
	weird=y
	while [ "$weird" = "y" ] && {
		echo "Do you want to create this live wallpaper using mykeyboardstartshere \"1. A video\" \"2. Multiple images\""
		read answer
		case $answer in
			"1. A video")
				echo "Send me the video"
				read video
				basename=$(basename $video)
				wget $video -O $basename
				frames=$(ffprobe -v error -count_frames -select_streams v:0 -show_entries stream=nb_read_frames -of default=nokey=1:noprint_wrappers=1 $basename)
				frames=$(awk "BEGIN{print $frames / 300}")
				ffmpeg -i $basename -vsync 0 -vf "select='not(mod(n,$frames))'" placeimages/images/n%03d.png
				rm $basename
				weird=n
				;;
			"2. Multiple images")
				echo "Send me the images, type done when you're done."
				n=1
				until [ "$n" = "301" ];do 
					read img
					[ "${img,,}" = "done" ] && break
					convert $img placeimages/images/n$n".png"
					n=$(($n + 1))
				done
				weird=n
				;;
		esac
	}
} || {
	echo "Custom LWP 2.6
Thanks : andrew121 for the app this script modifies
Thanks : olivvv59 for the added # of images
Thanks : danogentili for linux version (http://daniil.it)
---------------------------------------------------
Place images in the placeimages/images folder and place the app icon in placeimages/icon.png
Make sure the images are the same resolution as your device for optimal results
You can use up to 300 images (n01.png...n300.png)
The images must be in png format.
Press enter when you're done."
	read
}

echo "Enter the name for this live wallpaper. This is shown in the lwp choice menu. " 
read name
name=$(printf "%q" "$name")

echo "Enter the description for this live wallpaper. This is shown in the lwp choice menu. "
read desc
desc=$(printf "%q" "$desc")

echo "Enter the package name for this live wallpaper. This should be one word.
No spaces or fancy characters please. "
read pkgname
pkgname=$(printf "%q" "$pkgname")

n=0
for f in placeimages/images/*;do n=$(($n+1));done
n=$(printf "%x" $n)

sed 's/suvbsib/'$pkgname'/g' -i out/smali/com/custom/lwp/suvbsib/*.smali out/res/xml/wallpaper.xml out/AndroidManifest.xml

mv out/smali/com/custom/lwp/suvbsib out/smali/com/custom/lwp/$pkgname
sed -i 's/appname/'$name'/g' out/AndroidManifest.xml
sed -i 's/dscrp/'$desc'/g' out/res/values/strings.xml
sed -i 's/const\/16 v1, 0x31/const\/16 v1, 0x'$n'/g' out/smali/com/custom/lwp/$pkgname/LiveWallpaperPainting\$OutRunEngine.smali

cp placeimages/images/* "out/res/drawable-hdpi-v4/"
for f in out/res/drawable-*; do cp placeimages/icon.png $f;done

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
[ "$1" = "bashbot" ] && {
	read -p "Would you like to install this apk? 
Ur device must be connected to ur pc and adb must be in ur PATH (y/n). " -n 1 -r
	[[ $REPLY =~ ^[Yy]$ ]] && adb install -r $pkgname"-signed.apk"
	echo
} || { echo "myfilelocationstartshere $PWD/$pkgname"-signed.apk; };
sleep 1
exit

