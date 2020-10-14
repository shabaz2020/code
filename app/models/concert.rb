require_relative "band", "venue"

class Concert
    attr_accessor :date, :band, :venue
    @@all = []

    def initialze(date, band, venue)
        @date = date
        @band = band 
        @venue = venue
        @@all << self
    end

    def self.all
        @@all 
    end

    def band
        Band.all.select{|band| band.concert == self}
    end

    def venue
        Venue.all.select{|venue| venue.concert == self}
    end

    #if the concert is in the bands hometown return ture otherwise false
    def hometown_show d
        if (venue.city == band)
            true
        else
            false
        end
    end

    def introduction

        city = @venue.city
        band_name = @band.name
        band_hometown = @band.hometown
        "Hello #{city}!!!!!, we are #{band_name} and we're from #{band_hometown}"
    end


    
end