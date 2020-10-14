require "pry"
require "concert", "venue"

class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select{|concert| concert.venue == self}
    end

    def bands
        self.concerts.map{|concert| concert.band }.uniq
    end

    def concert_on(date)
        if self.concerts.find{ |concert| concert.date == date }
            return true
        else
            return false
        end
    end

    def most_frequent_band
        
    end

end