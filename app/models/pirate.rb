class Pirate
  attr_accessor :name, :weight, :height, :ships
  
  @@all = []
  
  def initialize(attributes)
    @ships = []
    attributes.each do |k, v| 
      if k == "ship"
        v.each do |ship_atts|
          @ships << Ship.new(ship_atts)
      else
        self.send("#{k}=", v)
      end
    end
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
  
end