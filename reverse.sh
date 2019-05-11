#!/bin/sh

chmod +x reverse.sh

qqmusic_tbs=/data/data/com.tencent.qqmusic/app_tbs
qqmusic_Ad=/data/media/0/qqmusic/splash
qqmusic_Ad2=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
wx_tbs=/data/data/com.tencent.mm/app_tbs
qq_tbs=/data/data/com.tencent.mobileqq/app_tbs
qqAd_Sdk=/data/media/0/tencent/TMAssistantSDK
qqAd_Sdk2=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/TMAssistantSDK
qqlive_tbs=/data/data/com.tencent.qqlive/app_tbs
qqbubble=/data/data/com.tencent.mobileqq/files/bubble_infi
qqfont=/data/media/0/tencent/MobileQQ/.font_info
qqfont2=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/MobileQQ/.font_info
douyin_splash=/data/media/0/Android/data/com.ss.android.ugc.aweme/splashCache

if [ ! -d "$qqmusic_Ad" ] ; then
	qqmusic_Ad=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash #&& echo "$qqmusic_Ad2 路径不存在(无碍)"
else
	qqmusic_Ad2=/data/media/0/qqmusic/splash
fi

if [ ! -d "$qqAd_Sdk" ] ;then
        qqAd_Sdk=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/TMAssistantSDK #&& echo "$qqAd_Sdk2 路径不存在(无碍)"
else
        qqAd_Sdk2=/data/media/0/tencent/TMAssistantSDK
fi

if [ ! -d $qqfont ] ; then
	qqfont=/data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/MobileQQ/.font_info #&& echo "$qqfont2 路径不存在(无碍)"
else
	qqfont2=/data/media/0/tencent/MobileQQ/.font_info
fi
isroot() {
if [ `whoami` = "root" ];then
        echo "您是root用户，正在运行撤销脚本...！"
chattr -i $qqmusic_tbs $qqmusic_Ad $qqmusic_Ad2 $wx_tbs $qq_tbs $qqAd_Sdk $qqAd_Sdk2  $qqfont $qqfont2 $qqlive_tbs $douyin_splash $qqbubble && echo "只读属性撤销完成" 
else
        echo "您是非root用户,脚本无法正常运行，尝试运行 'su -c ./reverse.sh' && exit"

fi
}
isroot

