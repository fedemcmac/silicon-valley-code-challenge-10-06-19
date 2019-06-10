require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("Eporta", "An", "furniture" )
startup2 = Startup.new("Verve", "Callum", "ticketing" )
startup3 = Startup.new("ECO", "Nick", "blockchain")
venture1 = VentureCapitalist.new("Bob", 9000000000)
venture2 = VentureCapitalist.new("Jim", 1500000000)
venture3 = VentureCapitalist.new("Monocolao", 700000)
funding1 = FundingRound.new(startup1, venture1, "Angel", 1.3)
funding2 = FundingRound.new(startup2, venture2, "Seed", 2.0)
funding3 = FundingRound.new(startup3, venture3, "Series A", 8.9)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line