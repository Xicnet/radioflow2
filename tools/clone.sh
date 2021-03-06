#!/bin/bash

PLATFORM=$1
STATION=$2
MODE=$3
SHORTNAME=$STATION

BUILD_TOOLS_PATH="/home/rama/Android/Sdk/build-tools/27.0.2"

BUNDLE_NAME="com.xicnet.$STATION"
SRC_BASEDIR="`pwd`/../assets/$BUNDLE_NAME"
TARGET_BASEDIR="`pwd`/../clones/$STATION"
mkdir -p $TARGET_BASEDIR
ICON=$SRC_BASEDIR/icon.png

### Default colours
LOADING_BG_COLOR="#000"
LOADING_FONT_COLOR="#fff"
BG_COLOR="#000"

### RFS server providing the stream URL, social links and programs info
CONTENT_SERVER="http://rnadmin.xicnet.com"

TPL_SHORTNAME="nacionalrock"
TPL_BASEDIR="`pwd`/../app/$TPL_SHORTNAME"
TPL_BUNDLE_NAME="com.xicnet.$TPL_SHORTNAME"
TPL_APP_NAME="NacionalRock"
TPL_STREAM_URL="http://5.9.56.134:8162/;stream.nsv"
TPL_FB_URL="fb://profile/239488842805946"
TPL_TW_URL="nacionalrock937"
TPL_WEB_URL="http://www.nacionalrock.com/"
TPL_MAIL="contacto@nacionalrock.com"
TPL_PACKAGE_DESCRIPTION="FM 93.7 Radio Nacional Rock (Argentina)"
TPL_STATION_NAME="Nacional Rock"
TPL_STATION_NAME_LONG="Nacional Rock 93.7"
TPL_LOADING_FONT_COLOR="fff"
TPL_CONTENT_SERVER="http://rnadmin.xicnet.com"

### Install cordova-icon to auto-generate icons if not installed
if  npm -g list cordova-icon
then
	echo "[II] cordova-icon already installed"
else
	npm -g install cordova-icon
fi

exit

### Stations configs
if [ "$STATION" == "nacionalclasica" ]
then

	BUNDLE_NAME="com.xicnet.nacionalclasica"
	APP_NAME="NacionalClasica"
	STREAM_URL="http://5.9.56.134:8154/;stream.nsv"
	FB_URL="fb://profile/118404581585464"
	TW_URL="NacionalClasica"
	WEB_URL="http://www.nacionalclasica.com.ar/"
	MAIL="clasicalra1@radionacional.gov.ar"
	PACKAGE_DESCRIPTION="Radio Nacional Clásica (Argentina)"
	STATION_NAME="Nacional Clasica 96.7"
	STATION_NAME_LONG="Nacional Clasica 96.7"
fi
if [ "$STATION" == "radionacionalam870" ]
then

	BUNDLE_NAME="com.xicnet.radionacionalam870"
	APP_NAME="RadioNacionalAM870"
	STREAM_URL="http://5.9.56.134:8010/;stream.nsv"
	FB_URL="fb://profile/119044662705"
	TW_URL="laradiopublica"
	WEB_URL="http://radionacional.com.ar/"
	MAIL="portal@radionacional.gov.ar"
	PACKAGE_DESCRIPTION="Radio Nacional AM 870 (Argentina)"
	STATION_NAME="Radio Nacional AM 870"
	STATION_NAME_LONG="Radio Nacional AM 870"
fi
if [ "$STATION" == "rae" ]
then

	BUNDLE_NAME="com.xicnet.rae"
	APP_NAME="RAE"
	STREAM_URL="http://5.9.56.134:8146/;stream.nsv"
	FB_URL="fb://profile/220909701364358"
	TW_URL="conexionrae"
	WEB_URL="http://rae.radionacional.com.ar/"
	MAIL="conexionrae@radionacional.gov.ar"
	PACKAGE_DESCRIPTION="Radiodifusion Argentina al Exterior"
	STATION_NAME="Radiodifusion Argentina al Exterior"
	STATION_NAME_LONG="Radiodifusion Argentina al Exterior"
fi
if [ "$STATION" == "nacionalfolklorica" ]
then

	BUNDLE_NAME="com.xicnet.nacionalfolklorica"
	APP_NAME="NacionalFolklorica"
	STREAM_URL="http://5.9.56.134:8158/;stream.nsv"
	FB_URL="fb://profile/111836772243537"
	TW_URL="lafolklorica"
	WEB_URL="http://www.nacionalfolklorica.com.ar/"
	MAIL="nacionalfolklorica@radionacional.gov.ar"
	PACKAGE_DESCRIPTION="Nacional Folklorica FM 98.7 (Argentina)"
	STATION_NAME="Nacional Folklorica FM 98.7"
	STATION_NAME_LONG="Nacional Folklorica FM 98.7"
fi
if [ "$STATION" == "radiodesalon" ]
then

	BUNDLE_NAME="com.xicnet.radiodesalon"
	APP_NAME="RadioDeSalon"
	STREAM_URL="http://stream.xicnet.com:2323/radiodesalon.mp3"
	FB_URL="fb://profile/123992934310457"
	TW_URL="radiodesalon"
	WEB_URL="http://radiodesalon.com/"
	MAIL="contacto@radiodesalon.com"
	PACKAGE_DESCRIPTION="Radio de Salon"
	STATION_NAME="Radio de Salon"
	STATION_NAME_LONG="Radio de Salon"
fi
if [ "$STATION" == "rockandpop" ]
then

	BUNDLE_NAME="com.xicnet.rockandpop"
	APP_NAME="RockAndPop"
	STREAM_URL="http://5.9.56.134:8162/;stream.nsv"
	FB_URL="fb://profile/132462208309"
	TW_URL="rock_and_pop"
	WEB_URL="http://www.fmrockandpop.com/home/"
	MAIL="http://www.fmrockandpop.com/contacto/"
	PACKAGE_DESCRIPTION="Rock and Pop"
	STATION_NAME="Rock and Pop"
	STATION_NAME_LONG="Rock and Pop"
fi
if [ "$STATION" == "lmf" ]
then

	BUNDLE_NAME="com.xicnet.lmf"
	APP_NAME="LMF"
	STREAM_URL="http://stream.xicnet.com:2323/radiodesalon.mp3"
	FB_URL="fb://profile/47434686894"
	TW_URL="LMF_oficial"
	WEB_URL="http://lasmanosdefilippi.com/"
	MAIL="http://lasmanosdefilippi.com/contacto.html"
	PACKAGE_DESCRIPTION="Las Manos de Filippi"
	STATION_NAME="Las Manos de Filippi"
	STATION_NAME_LONG="Las Manos de Filippi"
fi
if [ "$STATION" == "xicnet" ]
then

	BUNDLE_NAME="com.xicnet.xicnet"
	APP_NAME="Xicnet"
	STREAM_URL="http://198.27.81.55:8205/dfm_1"
	FB_URL="fb://profile/47434686894"
	TW_URL="LMF_oficial"
	WEB_URL="http://lasmanosdefilippi.com/"
	MAIL="http://lasmanosdefilippi.com/contacto.html"
	PACKAGE_DESCRIPTION="Xicnet"
	STATION_NAME="Xicnet"
	STATION_NAME_LONG="Xicnet"
fi
if [ "$STATION" == "telam" ]
then

	BUNDLE_NAME="com.xicnet.telam"
	APP_NAME="Telam"
	STREAM_URL="http://icecast01.dcarsat.com.ar:8000/sc_rad1"
	FB_URL="fb://profile/161243707242002"
	TW_URL="AgenciaTelam"
	WEB_URL="http://www.telam.com.ar/"
	MAIL="contacto@telam.com.ar"
	PACKAGE_DESCRIPTION="Telam"
	STATION_NAME="Telam"
	STATION_NAME_LONG="Telam"
fi
if [ "$STATION" == "radiorebelde" ]
then

	BUNDLE_NAME="com.xicnet.radiorebelde"
	APP_NAME="RadioRebelde"
	STREAM_URL="http://190.104.217.181:9754/"
	FB_URL="fb://profile/1528415437449953"
	TW_URL="RebeldeAM740"
	WEB_URL="http://www.radiorebelde.com.ar/"
	MAIL="740rebelde@gmail.com"
	PACKAGE_DESCRIPTION="Radio Rebelde (Argentina)"
	STATION_NAME="Radio Rebelde (Argentina)"
	STATION_NAME_LONG="Radio Rebelde (Argentina)"
fi
if [ "$STATION" == "radioapp" ]
then

	BUNDLE_NAME="com.xicnet.radioapp"
	APP_NAME="RadioApp"
	STREAM_URL=""
	FB_URL=""
	TW_URL=""
	WEB_URL=""
	MAIL=""
	PACKAGE_DESCRIPTION="Radio App"
	STATION_NAME="Radio App"
	STATION_NAME_LONG="Radio App"
fi
if [ "$STATION" == "futurock" ]
then

	BUNDLE_NAME="com.xicnet.futurock"
	APP_NAME="Futurock"
	STREAM_URL=""
	FB_URL=""
	TW_URL=""
	WEB_URL=""
	MAIL=""
	PACKAGE_DESCRIPTION="Futurock"
	STATION_NAME="Futurock"
	STATION_NAME_LONG="Futurock"
	LOADING_BG_COLOR="#fff"
	LOADING_FONT_COLOR="#000"
	BG_COLOR="#fff"
fi

function sign_align {
	if [ "$PLATFORM" == "android" ]
	then
		if [ "$MODE" == "emulate" ]
		then
			cordova emulate android
			return
		fi

		if [ "release" != "$MODE" ]
		then
			cordova build android
			return
		fi

		BUILD_PATH="$TARGET_BASEDIR/platforms/android/app/build/outputs/apk/release"
		UNSIGNED="$BUILD_PATH/app-release-unsigned.apk"
		SIGNED="$BUILD_PATH/$1-release.apk"

		cordova build --release
		jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore /home/rama/keystore/xicnet-release-key.keystore $UNSIGNED Xicnet_Release && \
		$BUILD_TOOLS_PATH/zipalign -v 4 $UNSIGNED $SIGNED
	fi

	if [ "$PLATFORM" == "ios" ]
	then
		cordova prepare ios
	fi
}

### Delete any previous version of cloned app
rm -rf $TARGET_BASEDIR

### Create cordova project
cordova create $TARGET_BASEDIR com.xicnet.$STATION "$STATION_NAME"

cd $TARGET_BASEDIR

if [ "$PLATFORM" == "ios" ]
then
	cordova plugin add https://github.com/EddyVerbruggen/cordova-plugin-backgroundaudio
fi

rm -rf $TARGET_BASEDIR/www
cp -pr $TPL_BASEDIR/www $TARGET_BASEDIR
cp -pr $TPL_BASEDIR/config.xml $TARGET_BASEDIR
cp -pr $ICON $TARGET_BASEDIR/icon.png

FILES=`grep -r -i nacional.*rock * -l | grep -v binar | grep -v .swp$ | grep -v "platforms/android/bin/" | grep -v platforms/android/app/build | grep -v platforms/android/.gradle`

for i in $FILES
do
	echo "PROCESSING: $i"
	sed "s#$TPL_BUNDLE_NAME#$BUNDLE_NAME#g" $i \
	| sed "s#$TPL_APP_NAME#$APP_NAME#g" \
	| sed "s#$TPL_FB_URL#$FB_URL#g" \
	| sed "s#$TPL_TW_URL#$TW_URL#g" \
	| sed "s#$TPL_MAIL#$MAIL#g" \
	| sed "s#$TPL_WEB_URL#$WEB_URL#g" \
	| sed "s#$TPL_PACKAGE_DESCRIPTION#$PACKAGE_DESCRIPTION#g" \
	| sed "s#$TPL_STATION_NAME_LONG#$STATION_NAME_LONG#g" \
	| sed "s#$TPL_SHORTNAME#$SHORTNAME#g" \
	| sed "s#$TPL_STATION_NAME#$STATION_NAME#g" > $i.tmp
	mv -v $i.tmp $i
done

### Create station-specific config.js
APP_CONFIG="www/js/config.js"
echo "PROCESSING: $APP_CONFIG"
sed "s#$TPL_STREAM_URL#$STREAM_URL#g" $APP_CONFIG \
| sed "s#$TPL_CONTENT_SERVER#$CONTENT_SERVER#g" > $APP_CONFIG.tmp
mv -v $APP_CONFIG.tmp $APP_CONFIG

### Add specified platform
cordova platform add $PLATFORM

### Generate icons from $TARGET_BASEDIR/icon.png
cordova-icon

### Replace default colours with station-specific ones
sed "s/\(\#loading\) {\(.*\) background-color: #000; color: #fff; }/\1 {\2 background-color: $LOADING_BG_COLOR; color: $LOADING_FONT_COLOR; }/g" www/css/index.css | sed "s/\(html\) {\(.*\) background: #000 \(no-repeat center center fixed\); }/\1 {\2 background: $BG_COLOR \3; }/g" > /tmp/index.css
mv /tmp/index.css www/css/index.css

### Copy station's logo to app
cp $SRC_BASEDIR/logo.png $TARGET_BASEDIR/www/img

if [ "$PLATFORM" == "android" ]
then
	sign_align $APP_NAME $STATION_NAME $MODE
fi
exit

cd -
