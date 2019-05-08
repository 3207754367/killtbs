#/!bin/bash

chmod +x killtbs.sh
qqmusic=/data/data/com.tencent.qqmusic/app_tbs
qqmusic_Ad=/data/media/0/Android/data/com.tencent.qqmusic/cache/file/image
wx=/data/data/com.tencent.mm/app_tbs
qq=/data/data/com.tencent.mobileqq/app_tbs
qqlive=/data/data/com.tencent.qqlive/app_tbs
echo "这是一个去除tbs内核的脚本"
if [ -d $qqmusic ] ; then
	rm -rf $qqmusic && touch $qqmusic && chattr +i $qqmusic
elif [ -d $wx ] ; then
	rm -rf $wx && touch $wx && chattr +i $wx
elif [ -d $qq ] ; then
	rm -rf $qq && touch $qq && chattr +i $qq
elif [ -d $qqlive ] ; then
	rm -rf $qqlive && touch $qqlive && chattr +i $qqlive
else
	rm -rf $qqmusic_Ad && touch $qqmusic_Ad && chattr +i $qqmusic_Ad
	echo 去除tbs内核完成,顺便去除了QQ音乐启动页广告
fi
