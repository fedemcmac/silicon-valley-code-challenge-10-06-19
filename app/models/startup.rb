class Startup

    attr_reader :founder, :domain
    attr_accessor :name, :funding_rounds
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
        @funding_rounds = []
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.find {|startup| startup.founder == founder}
    end

    def self.domains
        self.all.map {|startup| startup.domain}
    end
                                        
    def sign_contract(venture_capitalist, type, investment)
        funding_round = FundingRound.new(self, venture_capitalist, type, investment)
        @funding_rounds << funding_round
    end 

    def
        

end
