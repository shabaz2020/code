require_relative "concerts"


class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select{|concert| concert.band == self}
    end
    
    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    def all_introductions
        puts "Hello #{concert} !!!!!, we are #{band} and we're from #{hometown}"
    end
end