#/!bin/bash
qqmusic=/data/data/com.tencent.qqmusic/app_tbs
wx=/data/data/com.tencent.mm/app_tbs
qq=/data/data/com.tencent.mobileqq/app_tbs
qqlive=/data/data/com.tencent.qqlive/app_tbs
echo "这是一个去除tbs内核的脚本"
if [ -e $qqmusic ] ; then
	rm -rf $qqmusic && touch $qqmusic && chattr +i $qqmusic
elif [ -e $wx ] ; then
	rm -rf $wx && touch $wx && chattr +i $wx
elif [ -e $qq ] ; then
	rm -rf $qq && touch $qq && chattr +i $qq
elif [ -e $qqlive ] ; then
	rm -rf $qqlive && touch $qqlive && chattr +i $qqlive
else
	echo "done"
fi
