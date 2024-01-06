require 'nokogiri'
require 'open-uri'
require 'csv'

class Scraper

    def self.scrape_headlines(url)

        # url = 'https://en.wikipedia.org/wiki/Indonesia'
        document = Nokogiri::HTML(URI.open(url))
        p document.to_html
        headlines = document.css('span.mw-headline').map(&:text)
        p headlines
        headlines
    end

            # CSV.open('headlines.csv', 'w') do |csv|
        #     headlines.each do |headline|
        #         csv << [headline]
        #     end
        # end

end 