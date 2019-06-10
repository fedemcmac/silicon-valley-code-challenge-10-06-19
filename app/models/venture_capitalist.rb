class VentureCapitalist

    attr_accessor :name, :total_worth
    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|venture_capitalist| venture_capitalist.total_worth > 1000000000}
    end

    def portfolio
        FundingRound.all select { |round| round.venture_capitalist == self}
    end




end
