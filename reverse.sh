#!/bin/sh

chmod +x reverse.sh
qqmusic_Ad=/data/media/0/qqmusic/splash
qqmusic_Ad2=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash

if [ ! -d $qqmusic_Ad ] ; then
        echo -e "目录不存在 ,$qqmusic_Ad"
        qqmusic_Ad=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
else
        echo -e "目录不存在 ,$qqmusic_Ad2"
	qqmusic_Ad2=/data/media/0/qqmusic/splash
	fi

isroot() {
if [ `whoami` = "root" ];then
        echo "您是root用户，载入脚本...！"
	[ -O  $qq ] && chattr -i $qqmusic $qqmusic_Ad2 $qqmusic_Ad $wx $qq $qqlive && echo "只读属性撤销完成" 
else
        echo "您是非root用户！, 脚本使用了系统管理员权限的Chattr命令,请提权后再运行本脚本" && exit
fi
}
isroot

