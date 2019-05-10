#!/bin/sh
chmod +x reverse.sh
qqmusic_tbs=/data/data/com.tencent.qqmusic/app_tbs         qqmusic_Ad=/data/media/0/qqmusic/splash
qqmusic_Ad2=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
wx_tbs=/data/data/com.tencent.mm/app_tbs
qq_tbs=/data/data/com.tencent.mobileqq/app_tbs             qqAd_Sdk=/data/media/0/tencent/TMAssistantSDK
qqAd_Sdk2=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/TMAssistantSDK
qqsplash_Ad=/data/media/0/tencent/MobileQQ/splahAD
qqsplash_Ad2=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/MobileQQ/splahAD
qqlive_tbs=/data/data/com.tencent.qqlive/app_tbs
douyin_splash=/data/media/0/Android/data/com.ss.android.ugc.aweme/splashCache

if [ ! -d $qqmusic_Ad ] ; then
        qqmusic_Ad=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
else
	qqmusic_Ad2=/data/media/0/qqmusic/splash
fi

if [ ! -d $qqsplash_Ad ] ; then
        qqsplash_Ad=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/Tencent/MobileQQ/splahAD
else
        qqsplash_Ad2=/data/media/0/Tencent/MobileQQ/splahAD
fi
                                                           if [ ! -d $qqAd_Sdk ] ;then
        qqAd_Sdk=/data/media/0/Android/data/com.tencent.mob
ileqq/sdcard/Tencent/TMAssistantSDK                        else
        qqAd_Sdk2=/data/media/0/Tencent/MobileQQ/splahAD
fi
isroot() {
if [ `whoami` = "root" ];then
        echo "您是root用户，载入脚本...！"
	[ -O  $qq ] && chattr -i $qqmusic_tbs $qqmusic_Ad $qqmusic_Ad2 $wx_tbs $qq_tbs $qqAd_Sdk $qqsplash_Ad $qqsplash_Ad2 $qqlive_tbs $douyin_splash && echo "只读属性撤销完成" 
else
        echo "您是非root用户！, 脚本使用了系统管理员权限的Chattr命令,请提权后再运行本脚本" && exit
fi
}
isroot

