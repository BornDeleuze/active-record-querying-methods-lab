class Show < ActiveRecord::Base
    def self.highest_rating
        self.all.map{ |o| o.rating }.max
    end
    
    def self.most_popular_show
        x = self.all.map{ |o| o.rating }.max
        self.all.find_by(rating: x)
    end

    def self.lowest_rating
        self.all.map{ |o| o.rating }.min
    end

    def self.least_popular_show
        x = self.all.map{ |o| o.rating }.min
        self.all.find_by(rating: x)
    end

    def self.ratings_sum
        self.all.map{|o| o.rating}.sum
    end

    def self.popular_shows
        self.all.select {|o| o.rating > 5}
    end

    def self.shows_by_alphabetical_order
        self.all.sort_by { |o| o.name }
    end

end