#/!bin/bash

chmod +x killtbs.sh
qqmusic=/data/data/com.tencent.qqmusic/app_tbs
qqmusic_Ad=/data/media/0/qqmusic/splash
qqmusic_Ad2=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splas
wx=/data/data/com.tencent.mm/app_tbs
qq=/data/data/com.tencent.mobileqq/app_tbs
qqlive=/data/data/com.tencent.qqlive/app_tbs

chattrfile () {
if [ -w $qqmusic ] ; then
        chattr +i $qqmusic
elif [ -w $wx ] ; then
        chattr +i $wx
elif [ -w $qq ] ; then
        chattr +i $qq
elif [ -w $qqlive ] ; then
        chattr +i $qqlive
elif [ -w $qqmusic_Ad ] ; then
        chattr +i $qqmusic_Ad
elif [ -w $qqmusic_Ad2 ] ; then
        chattr +i $qqmusic_Ad2
else
        echo  "替换成功，完成"
fi
}
removetbs (){
echo -n "
$qqmusic $qqmusic_Ad $qqmusic_Ad2 $wx $qq $qqlive
这是一个去除tbs内核的脚本,脚本使用了系统管理员权限的Chattr命令
脚本将替换这些文件夹为空的文件并加入只读属性
第二次运行本脚本将取消这些文件的i只读属性 "

if [ -d $qqmusic ] ; then
	rm -rf $qqmusic && :> $qqmusic && chattr +i $qqmusic
elif [ -d $wx ] ; then
	rm -rf $wx && :> $wx && chattr +i $wx
elif [ -d $qq ] ; then
	rm -rf $qq && :> $qq && chattr +i $qq
elif [ -d $qqlive ] ; then
	rm -rf $qqlive && :> $qqlive && chattr +i $qqlive
elif [ -d $qqmusic_Ad2 ] ; then
	rm -rf $qqmusic_Ad2 && :> $qqmusic_Ad2 && chattr +i $qqmusic_Ad2
elif [ -d $qqmusic_Ad ] ; then
	rm -rf $qqmusic_Ad && :> $qqmusic_Ad && chattr +i $qqmusic_Ad
else
	echo  "去除tbs内核完成，去除了QQ音乐启动页广告"
	chattrfile
fi
}


removetbs

chattr_ilile () {
if [ ! -w "$qqmusic $qqmusic_Ad $qqmusic_Ad2 $wx $qq $qqlive" ] ; then 
	chattr -i $qqmusic $qqmusic_Ad2 $qqmusic_Ad $wx $qq $qqlive
	echo "只读属性已撤销"
fi	
}

