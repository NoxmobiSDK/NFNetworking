#! /bin/bash

PodName="NFNetworking"

# 读取plist中的版本号
srcVer=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" ./$PodName.framework/Info.plist)
echo "\n🔥版本号 = " "$srcVer"

echo "\n🔥是否继续执行?[y/n]"
read flag
if [[ "$flag" != "y" ]]
then
    exit 101
fi

echo "\n🔥添加到暂存区 git add . ："
gitAddRes=`git add .`

echo "\n🔥提交 git commit："
gitCommitRes=`git commit -m v$srcVer`
echo "$gitCommitRes"

echo "\n🔥推送到远程 git push："
gitPushRes=`git push origin main`
echo "$gitPushRes"

echo "\n🔥打本地标签 git tag："
gitTagRes=`git tag $srcVer`

echo "\n🔥推送标签 git tag："
gitPushTagRes=`git push origin $srcVer`
echo "$gitPushTagRes"
