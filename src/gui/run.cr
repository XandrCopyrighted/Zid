require "webview"
require "uri"

def run_app(width : Int32, height : Int32, title : String, app_class)
  app_instance = app_class.new
  html_content = app_instance.to_html

  encoded_html = URI.encode(html_content)

  wv = Webview.window(width, height, Webview::SizeHints::NONE, title, "data:text/html,#{encoded_html}")
  wv.run

  puts "Press \x1b[1;36mEnter\x1b[0m or do \x1b[1;36mCtrl + C\x1b[0m to fully quit."
  gets
  wv.destroy
end
