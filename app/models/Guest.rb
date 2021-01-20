class Guest
    attr_accessor :listings, :trips, :trip_count, :name
    @@all = []

    def initialize(name)
        @name = name
        @listings = []
        @trips = []
        @trip_count = 0
        Guest.all.push(self)
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        Guest.all.select{|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        Guest.all.select{|guest| guest.name == name}
    end

end