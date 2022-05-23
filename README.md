# seminar_server_backup
ゼミ室のサーバのバックアップスクリプトの置き場
### 環境
OS: wsl Ubuntu 22.04 lts  
---
### 最終的なディレクトリ構成
```
├── backup.sh
├── excluded_patterns.txt
├── init.sh
├── rsync-time-backup
└── store

2 directories, 3 files
```
---


## 初回準備
github から2つのrepoをDL
```
git clone https://github.com/llldagolll/seminar_server_backup.git
cd seminar_server_backup
git clone https://github.com/laurent22/rsync-time-backup
```    
環境設定ファイルの作成  
```
touch .env
```  

バックアップに関する設定を.envに追記
``` bash:.env
BACKUPDIR="{バックアップの置き場}"
SRCDIR="{バックアップしたいデータ}"
```

例  
```
BACKUPDIR="/home/{username}/seminar_server_backup/store"
SRCDIR="/"
```


初期化スクリプト実行  
```
./init.sh
```
---  
## バックアップの実行  
```
sudo ./backup.sh
```

## バックアップができてるか確認  
以下のようになればok  

![image](https://user-images.githubusercontent.com/72905484/169770602-23e53f44-34c8-46a5-b4ea-8884f8d7164f.png)  

```  
tree -L 1 {バックアップの置き場}  
```  


```
store/
├── 2022-05-23-165426
├── backup.marker
└── latest -> 2022-05-23-165426

2 directories, 1 file
```


# 参考  
https://github.com/laurent22/rsync-time-backup/blob/master/README.md
