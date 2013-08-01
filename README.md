ruby_simple_webserver_cgi
=========================

use webrick

webrickをオプション付きで起動させるプログラム。  
  Apacheをセットアップしないで、rubyのwebrickの細かいオプションを入力しなくても、ある程度動きます。

cgiとかWEBサーバーなしでは動かないHTMLを試したいときに便利です。

##使い方
1. ブラウザで確認したいファイルを同じディレクトリに置く
2. プログラムを起動
```
% ruby ./webserver.rb
```
3. http://localhost:8080/ にアクセス
