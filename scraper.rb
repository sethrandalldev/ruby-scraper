require 'nokogiri'
require 'open-uri'

url = 'https://en.wikipedia.org/wiki/Indonesia'
document = Nokogiri::HTML(URI.open(url))

headlines = document.css('span.mw-headline').map(&:text)
puts headlines