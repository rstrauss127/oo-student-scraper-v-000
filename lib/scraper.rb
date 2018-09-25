require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper


  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)


    roster =  doc.css(".card-text-container")
    names = roster.collect {|name| name.css("h4").text}
    locations = roster.collect {|location| location.css("p").text}

    links = doc.css('.student-card a')
      binding.pry
    urls = links.collect {|url| url.css["href"]}



  end

  def self.scrape_profile_page(profile_url)

  end

end
