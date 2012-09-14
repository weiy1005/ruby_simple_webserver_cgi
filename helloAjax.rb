##############################
#Javascript本格入門の
#Ajax.phpのruby書き換え版
##############################

# QueryString取得
require "cgi"
qs = CGI.new
sleep(3)
# 画面への出力
print "Content-type: text/html\n\n"
print "こんにちは#{qs['name']}さん"
