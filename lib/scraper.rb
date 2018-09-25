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

    urls = links.collect {|url| url['href']}
    array = [[names], [locations], [urls]]
binding.pry


  end

  def self.scrape_profile_page(profile_url)

  end

end
