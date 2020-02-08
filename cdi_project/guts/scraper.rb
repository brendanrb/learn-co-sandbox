require 'nokogiri'
require 'open-uri'
require './guts/video_game.rb'


class Scraper
  def self.scrape_video_games(game)
    doc = Nokogiri::HTML(open("https://www.ign.com/lists/top-100-games/100"))
    
    Scraper.name = doc.css("a.https://www.ign.com/games/#{game}")
    #name
    
    Scraper.release_date = doc.css("span.item-label-value").text
    #release date 
    
    Scraper.score = doc.css("div.badge-number").text.strip
    #score
    
    Scraper.description = doc.css("span.item-byline").text.strip
    #description
    
    Scraper.fun_facts = doc.css("li.item-highlight flaticon stroke plus-2").text.strip
    #fun facts
  end
end
