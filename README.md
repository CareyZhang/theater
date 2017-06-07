# Theater

## 組員名單:
* B10417026 張鎧麟
* B10417045 蕭富鴻
* B10400002 鄭雅勻
* B10400025 彭選庭

## 運用技術:
MySQL、PHP、HTML、CSS、Javascript、jquery、ajax

## 重建環境:
1. 安裝xampp後，先開啟xampp control panel將Apache和MySQL start。
2. 將檔案放到C:\xampp\htdocs\theater目錄下。
3. 在網址列打入[http://localhost/phpmyadmin](http://localhost/phpmyadmin)，點擊資料庫，新建資料庫名稱theater，編碼與排序選擇utf8_general_ci，點擊建立。
4. 新增使用者，帳號為admin，主機為localhost，密碼為0000，全域權限全選，執行。
* 新增使用者-可能遇到的錯誤訊息:SHOW PLUGINS SONAME LIKE '%_password_check%'，解決方法:用檔案管理員新增以下路徑"C:\xampp\mysql\lib\plugin"
5. 到資料庫theater後，點擊匯入選擇檔案theater.sql後，點執行。
6. 到"XAMPP Control Panel"內，點"Apache"的"Config"，選"PHP(php.ini)"。將";short_open_tag = Off"改為"short_open_tag = On"。
7. 匯入成功之後到[http://localhost/theater/](http://localhost/theater/)即可看到網頁。