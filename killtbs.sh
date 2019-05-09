#/!bin/bash

chmod +x killtbs.sh
qqmusic=/data/data/com.tencent.qqmusic/app_tbs
qqmusic_Ad=/data/media/0/qqmusic/splash
qqmusic_Ad2=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
wx=/data/data/com.tencent.mm/app_tbs
qq=/data/data/com.tencent.mobileqq/app_tbs
qqlive=/data/data/com.tencent.qqlive/app_tbs

if [ ! -d $qqmusic_Ad ] ; then                
	echo -e "目录不存在 ,$qqmusic_Ad"
	qqmusic_Ad=/data/media/0/Android/data/com.tencent.qqmusic/sdcard/qqmusic/splash
else
        echo -e "目录不存在 ,$qqmusic_Ad2"
	qqmusic_Ad2=/data/media/0/qqmusic/splash
 fi
 
chattrfile () {
	
[ -O  $qq ]  && chattr +i $qqmusic $qqmusic_Ad2 $qqmusic_Ad $wx $qq $qqlive && echo "加入只读属性"

}

removetbs (){
echo -e "
$qqmusic
$qqmusic_Ad
$qqmusic_Ad2
$wx
$qq
$qqlive

这是一个去除tbs内核的脚本,脚本使用了系统管理员权限的Chattr命令
脚本将替换这些文件夹为空的文件并加入只读属性
取消这些文件的只读属性请运行reverse.sh脚本 "

if [ -d $qqmusic ] ; then
	rm -rf $qqmusic && touch $qqmusic
elif [ -d $wx ] ; then
	rm -rf $wx && touch $wx 
elif [ -d $qq ] ; then
	rm -rf $qq && touch $qq
elif [ -d $qqlive ] ; then
	rm -rf $qqlive && touch $qqlive
elif [  -d $qqmusic_Ad ] ; then
	rm -rf $qqmusic_Ad && touch $qqmusic_Ad
elif [ -d $qqmusic_Ad2 ] ;then
	rm -rf $qqmusic_Ad2 && touch $qqmusic_Ad2
else

	echo  "去除tbs内核完成，去除了QQ音乐启动页广告" &&  chattrfile
	fi
}

isroot() {
if [ `whoami` = "root" ];then
	echo "您是root用户，载入脚本...！" && removetbs
else
	echo "您是非root用户！, 脚本使用了系统管理员权限的Chattr命令,请提权后再运行本脚本" && sleep 1 && exit
fi
}

isroot
