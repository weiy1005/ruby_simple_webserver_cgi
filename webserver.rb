require 'webrick'
include WEBrick

module WEBrick::HTTPServlet
  FileHandler.add_handler('rb', CGIHandler)
end

s = HTTPServer.new(
  :Port => 8080,
  :DocumentRoot => './',
  :CGIInterpreter => '/usr/bin/ruby'
)

#we have to use CGIInterpreter!!!
#WEBRickでCGIを実行しようとするとExec format errorになる場合の対策 | もっとクールにプログラミング <http://pgnote.net/?p=435>

s.mount('/view.cgi', WEBrick::HTTPServlet::CGIHandler, 'view.rb')
#:DocumentRoot => File.join(Dir.pwd, "/html")
trap("INT") { s.shutdown }
s.start