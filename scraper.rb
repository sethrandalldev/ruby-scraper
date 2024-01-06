require 'nokogiri'
require 'open-uri'
require 'csv'

url = 'https://en.wikipedia.org/wiki/Indonesia'
document = Nokogiri::HTML(URI.open(url))

headlines = document.css('span.mw-headline').map(&:text)
puts headlines

CSV.open('headlines.csv', 'w') do |csv|
    headlines.each do |headline|
        csv << [headline]
    end
end