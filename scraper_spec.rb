require 'rspec'
require 'webmock/rspec'
require_relative 'scraper'

RSpec.describe Scraper do
    describe '#scrape_headlines' do
      it 'fetches and returns headlines from a website' do
        stub_request(:get, 'https://en.wikipedia.org/wiki/Indonesia')
        .to_return(body: File.read('example_page.html'))

        headlines = Scraper.scrape_headlines('https://en.wikipedia.org/wiki/Indonesia')
        expect(headlines).to include('Etymology')
      end
    end
  end