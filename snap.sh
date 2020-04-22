#!/bin/bash
#cd /root/snap2html/DiogenesList-master/
#python /root/snap2html/DiogenesList-master/diogeneslist.py /root/rclone/00 index
sed -i "s#\[LINK ROOT\]#http://wellsyue.tk/剧集#g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\mnt\\\\\\\rclone\\\\\\\film##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>所有内容均来自公开分享_收藏自用_侵权联系#g" /root/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>film盘_Welcom" /root/snap2html/DiogenesList-master/index.html
cp /root/snap2html/DiogenesList-master/index.html /root/snapGit/
cd /root/snapGit
git add .
git commit -m 'snap2htmlDailyUpdate'
git push  https://github.com/wellsyue/myfile.git
