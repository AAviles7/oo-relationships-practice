class Listing
    attr_accessor :guests, :trips, :trip_count, :city
    @@all = []

    def initialize(city)
        @city = city
        @guests = []
        @trips = []
        @trip_count = 0
        Listing.all.push(self)
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        Listing.all.select{|list| list.city == city}
    end

    def self.most_popular
        Listing.all.max_by{|list| list.trip_count}
    end

end