#!/bin/sh

chmod +x killtbs.sh
qqmusic_tbs=/data/data/com.tencent.qqmusic/app_tbs
qqmusic_Ad=/data/media/0/qqmusic/splash
qqmusic_Ad2=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
wx_tbs=/data/data/com.tencent.mm/app_tbs
qq_tbs=/data/data/com.tencent.mobileqq/app_tbs
qqAd_Sdk=/data/media/0/tencent/TMAssistantSDK
qqAd_Sdk2=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/TMAssistantSDK
qqbubble=/data/data/com.tencent.mobileqq/files/bubble_info
qqfont=/data/media/0/tencent/MobileQQ/.font_info
qqfont2=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/MobileQQ/.font_info
qqlive_tbs=/data/data/com.tencent.qqlive/app_tbs
douyin_splash=/data/media/0/Android/data/com.ss.android.ugc.aweme/splashCache

if [ ! -d $qqmusic_Ad ] ; then                
	qqmusic_Ad=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
else
	qqmusic_Ad2=/data/media/0/qqmusic/splash
fi
 
if [ ! -d $qqAd_Sdk ] ;then
	qqAd_Sdk=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/TMAssistantSDK 
else 
	qqAd_Sdk2=/data/media/0/tencent/MobileQQ/splahAD
fi

if [ ! -d $qqfont ] ; then
	qqfont=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/MobileQQ/.font_info
else 
	qqfont2=/data/media/0/tencent/MobileQQ/.font_info
fi

offroot () {
echo -e "`chattr +i $qqmusic_tbs $qqmusic_Ad $qqmusic_Ad2 $wx_tbs $qq_tbs $qqAd_Sdk $qqAd_Sdk2  $qqfont $qqfont2 $qqlive_tbs $douyin_splash $qqbubble`
" && echo "设置只读属性..."

}

removetbs (){
echo -e "
脚本将替换文件夹为空的文件并加入只读属性
 "

if [ -d $qqmusic_tbs ] ; then
	rm -rf $qqmusic_tbs && touch $qqmusic_tbs
elif [ -d $qqmusic_Ad ] ; then
	rm -rf $qqmusic_Ad && touch $qqmusic_Ad
elif [ -d $qqmusic_Ad2 ] ; then
	rm -rf $qqmusic_Ad2 && touch $qqmusic_Ad2
elif [ -d $wx_tbs ] ; then
	rm -rf $wx_tbs && touch $wx_tbs
elif [ -d $qq_tbs ] ; then
	rm -rf $qq_tbs && touch $qq_tbs
elif [ -d $qqAd_Sdk ] ; then
	rm -rf $qqAd_Sdk && touch $qqAd_Sdk
elif [ -d $qqAd_Sdk2 ] ; then
	rm -rf $qqAd_Sdk2 && touch $qqAd_Sdk2
elif [ -d $qqlive_tbs ] ; then
	rm -rf $qqlive_tbs && touch $qqlive_tbs
elif [ -d $qqbubble ] ; then
	rm -rf $qqbubble && touch $qqbubble
elif [ -d $qqfont ] ; then
	rm -rf $qqfont && touch $qqfont
elif [ -d $qqfont2 ] ; then
	rm -rf $qqfont2 && touch $qqfont2
elif [ -d $douyin_splash ] ; then
	rm -rf $douyin_splash && touch $douyin_splash
else
	 $istype  && echo  取消这些文件的只读属性请运行reset.sh脚本
	fi
}

isroot() {
if [ `busybox whoami` = "root" ];then
	echo "您是root用户，载入脚本...！" && istype=offroot &&  removetbs

else
	echo "
	您是非root用户！, 脚本无法使用系统管理员权限的Chattr命令...
	请执行 'su -c ./killtbs.sh'
	" && exit
fi
}

isroot
