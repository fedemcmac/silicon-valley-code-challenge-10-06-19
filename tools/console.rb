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
funding1 = FundingRound.new(startup1, venture1, "Angel", 20.0)
funding2 = FundingRound.new(startup2, venture2, "Seed", 2.0)
funding3 = FundingRound.new(startup3, venture3, "Series A", 9.0)
contract_1_3 = startup1.sign_contract(venture3, "Seed", 40.0)
contract_1_2 = startup1.sign_contract(venture2, "Seed", 24.0)
contract_1_2 = startup1.sign_contract(venture2, "Seed", 18.0)
contract_1_2_2 = startup1.sign_contract(venture2, "Seed", 80.0)

contract_2_1 = startup2.sign_contract(venture1, "Seed", 100.0)
contract_2_2 = startup2.sign_contract(venture2, "Seed", 1.0)
contract_2_3 = startup2.sign_contract(venture3, "Seed", 301.0)

contract_3_1 = startup3.sign_contract(venture1, "Seed", 50.0)
contract_3_2 = startup3.sign_contract(venture2, "Seed", 2.0)
contract_3_3 = startup3.sign_contract(venture3, "Seed", 3.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line