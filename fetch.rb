require 'json'
require 'nokogiri'

def fetch_headings
  text = File.readlines 'slack-zaps.xml'
  page = Nokogiri::XML.parse(text)
  puts page

  h2s = page.css("h2[class='shared-zap-title']")
  puts h2s
end

fetch_headings
