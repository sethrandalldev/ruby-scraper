require 'nokogiri'
require 'open-uri'
require 'csv'

class Scraper

    def self.scrape_headlines(url)m

        # url = 'https://en.wikipedia.org/wiki/Indonesia'
        document = Nokogiri::HTML(URI.open(url))
        p document.to_html
        headlines = document.css('span.mw-headline').map(&:text)
        p headlines
        headlines
    end

    def self.save_data_to_csv(file_name, data)
        CSV.open(file_name, 'w') do |csv|
        data.each do |row|
            csv << [row]
        end
    end
end 