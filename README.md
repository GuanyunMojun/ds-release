# DS 助手 · 直链下载仓库

这个仓库就是为了「点开链接直接下载 APK」而生的：推到 GitHub 后，
观众在 B 站简介里点链接，浏览器直接开始下载，**不需要任何网盘、不用登录**。

## 一键发布（3 条命令）

```bash
cd ds-release
git init
git add .
git commit -m "DS 助手 v1.0"
# 在 github.com 新建一个公开仓库（比如 ds-release），然后：
git remote add origin https://github.com/你的用户名/ds-release.git
git push -u origin main
```

## 推上去之后，观众用的直链（三选一，都写上防失效）

1. jsDelivr CDN（国内有节点，最快）：
   https://cdn.jsdelivr.net/gh/你的用户名/ds-release@main/DS助手-官方同款-v1.0.apk

2. GitHub 原生（稳，国内稍慢）：
   https://github.com/你的用户名/ds-release/raw/main/DS助手-官方同款-v1.0.apk

3. ghproxy 加速镜像（jsDelivr 抽风时用）：
   https://ghproxy.net/https://github.com/你的用户名/ds-release/raw/main/DS助手-官方同款-v1.0.apk

补丁模块同理，把文件名换成 DS官方App-API补丁模块.apk 即可。

## B 站简介直接贴

```
安卓安装包（点开即下）：
cdn.jsdelivr.net/gh/你的用户名/ds-release@main/DS助手-官方同款-v1.0.apk
（失效备用：ghproxy.net/https://github.com/你的用户名/ds-release/raw/main/DS助手-官方同款-v1.0.apk）
```

## 注意

- APK 更新时：替换仓库里的文件 → commit → push，链接不变，观众永远拿到最新版
- 仓库必须**公开**，否则直链 404
- jsDelivr 有缓存（约 12h），更新后想立刻生效就换文件名加版本号（v1.1.apk）
