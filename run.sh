#!/bin/bash
java -version &>/dev/null || { echo "Java is not installed. Please install java to run this tool"; exit 1; }
aapt &>/dev/null || export PATH="$PATH:$PWD/other"
rm -rf out &>/dev/null

cp -a other/backup out
first=$2


[ "$1" = "bashbot" ] && {
	error() { cd /mnt/vdb; rm -rf /mnt/vdb/$first; echo "I'm sorry, it seems an error occurred ($*). Please type /start to restart the process. If you want you can report this error to the creator of this bot by sending a screenshot of this chat @danogentili"; sleep 2;exit; }
	mktmpdir() { rm -rf /mnt/vdb/$1 &>/dev/null; cp -a $PWD /mnt/vdb/$1; cd /mnt/vdb/$1; }
	echo "Custom LWP 2.6
Thanks : andrew121 for the app this script modifies
Thanks : olivvv59 for adding the # of images
Thanks : @danogentili for linux version and telegram bot (http://daniil.it)
Send me the app icon (preferrably square)."
	mktmpdir $2 || error "couldn't create tmp dir"
	read icon
	wget "$icon" -qO placeimages/$(basename "$icon") && convert placeimages/$(basename "$icon") placeimages/icon.png && rm placeimages/$(basename "$icon") || error "couldn't download icon" 

	echo "Send me your device's screen size (can be obtained using https://play.google.com/store/apps/details?id=lt.andro.screensize)."
	read size
	echo "$size" | grep -q http && {
		screensize=$(identify "$size" | awk '{print $3}')
	} || {
		screensize="$size"
	}
	weird=y
	while [ "$weird" = "y" ];do 
		echo "Do you want to create this live wallpaper using mykeyboardstartshere \"1. A video\" \"2. Multiple images\""
		read answer
		case "$answer" in
			"1. A video")
				echo "Send me the video itself or the video's url (I can download youtube videos)."
				read video
				video=$(echo "$video" | sed 's/^\s*//g;s/\s*$//g')
				basename="V.mp4"
				echo "Downloading the video..."
				youtube-dl "$video" -o $basename || error "couldn't download video"

				echo "Getting frame number..."
				frames=$(ffprobe -v error -count_frames -select_streams v:0 -show_entries stream=duration -of default=nokey=1:noprint_wrappers=1 $basename -loglevel panic)
				frames=$(awk "BEGIN{print 1 / ($frames / 300)}")

				echo "Converting video..."
				ffmpeg -i $basename -f image2 -r $frames placeimages/images/n%03d.png -loglevel panic || error "couldn't convert video"
				rm $basename
				echo "Done!"
				weird=n
				;;
			"2. Multiple images")
				echo "Send me the images, type done when you're done."
				n=1
				p=0
				until [ "$n" = "301" ];do 
					read img
					[ "${img,,}" = "done" ] && break
					wget "$img" -qO placeimages/images/"$(basename "$img")" && convert placeimages/images/"$(basename "$img")" placeimages/images/n$n".png" && rm placeimages/images/"$(basename "$img")" && echo ok || error "couldn't download the image"

					n=$(($n + 1))
				done
				weird=n
				;;
		esac
	done
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
Please enter your device's screen size (example: 1980x1280)."
	read screensize
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

echo "Converting images (might take up to five minutes)..."
n=0
p=0
for f in placeimages/images/*;do n=$(($n+1)); [ "$n" = 10 ] && p=; convert "$f" -resize "$screensize" "out/res/drawable-hdpi-v4/n"$p$n".png";done
n=$(printf "%x" $n)

counter=1
placeholder=0

echo "Copying images..."
screensize="s/480, 854/$(echo "$screensize" | sed 's/x/, /g')/g"
until [ $counter = 301 ]; do 
	[ ! -f "out/res/drawable-hdpi-v4/n$placeholder"$counter".png" ] && cp "other/ph.png" "out/res/drawable-hdpi-v4/n$placeholder"$counter".png"
	counter=$(($counter + 1))
	[ $counter = 10 ] && placeholder=
done

echo "Editing configuration files..."
sed -i 's/suvbsib/'$pkgname'/g' out/smali/com/custom/lwp/suvbsib/*.smali out/res/xml/*.xml out/AndroidManifest.xml out/res/values/*.xml
sed -i "$screensize" out/smali/com/custom/lwp/suvbsib/*.smali out/res/xml/*.xml out/AndroidManifest.xml out/res/values/*.xml

mv out/smali/com/custom/lwp/suvbsib out/smali/com/custom/lwp/$pkgname
sed -i 's/appname/'$name'/g' out/AndroidManifest.xml
sed -i 's/dscrp/'$desc'/g' out/res/values/strings.xml
sed -i 's/const\/16 v1, 0x31/const\/16 v1, 0x'$n'/g' out/smali/com/custom/lwp/$pkgname/LiveWallpaperPainting\$OutRunEngine.smali


for f in out/res/drawable-*; do cp placeimages/icon.png $f;done

echo "
Building Apk..."

cd other
java -jar apktool.jar b ../out "$pkgname-unsigned.apk"
echo "
Signing Apk..."

java -jar signapk.jar -w testkey.x509.pem testkey.pk8 "$pkgname-unsigned.apk" "$pkgname-signed.apk"
rm "$pkgname-unsigned.apk"

cd ..
mv other/$pkgname-signed.apk $pkgname-signed.apk
echo "
Done.
"
[ "$1" != "bashbot" ] && {
	read -p "Would you like to install this apk? 
Ur device must be connected to ur pc and adb must be in ur PATH (y/n). " -n 1 -r
	[[ $REPLY =~ ^[Yy]$ ]] && adb install -r $pkgname"-signed.apk"
	echo
} || { 
	echo "This bot is based on https://github.com/topkecleon/telegram-bot-bash
You can also contribute to the development by sending a pull request @ https://github.com/danog/mklwp
Thanks for having used mklwp! To restart the process type /start.
Do check out my other projects @ https://daniil.it and do Check out my other bots: @video_dl_bot, @mklwp_bot, @caption_ai_bot, @cowsaysbot, @cowthinksbot, @figletsbot, @lolcatzbot, @filtersbot, @id3bot, @pwrtelegrambot!
Remember to set the correct resolution of your lwp by going in the lwp settings and setting the default resultion.
Sending apk...
There U go myfilelocationstartshere $PWD/$pkgname"-signed.apk

	sleep 10
};


exit

