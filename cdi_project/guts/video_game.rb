class VideoGame
  
  attr_accessor :name, :release_date, :description, :score, :fun_facts
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.list 
    @@all.each.sort_by { |game| game.number}
  end
  
end
