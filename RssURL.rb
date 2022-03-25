require 'rss'
require 'open-uri'

class Consumming_RSS
  attr_accessor :title, :description, :url
  def initialize(url)
    @url = url
  end
  def getRSSData
    URI.open(@url) do |rss|
      feed = RSS::Parser.parse(rss)
      @title = feed.channel
      @description = feed.item
    end
  end
  def getTittle
    puts @title
  end
  def getDescription
      puts @description
  end
  def getURL
    puts @url
  end
end

def rssUrlGet
  puts "Enter RSS feed URL : "
  rssFeedUrl = gets.chomp
  url1 = Consumming_RSS.new(rssFeedUrl)
  url1.getRSSData
  url1.getTittle
  url1.getDescription
  url1.getURL
end

rssUrlGet()