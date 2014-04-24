

require 'transparency_data'
gem 'monster_mash'
require 'hashie'

TransparencyData.api_key = 'adb29164f28748dba62bb408b0043bab'

filename = "contributions.txt"
myfile = File.open(filename, "w")
myfile.puts "stuff"



contributors = TransparencyData::Client.contributions(:contributor_gender => 'M')

myfile.puts contributors
myfile.close


# puts contributions

# contributions.each do |contribution|
#   puts "Amount: #{contribution.amount}"
#   puts "Date: #{contribution.date}"
# end

# lobbyings = TransparencyData::Client.lobbying(:client_ft => "apple inc")
# lobbyings.each do |lobbying|
#   puts "Amount: #{lobbying.amount}"
#   puts "Year: #{lobbying.year}"
# end


# # contributions with an amount greater than or equal to $1000
# jobs = TransparencyData::Client.contributions(:contributor_ft => 'steve jobs', :amount => {:gte => 1000})
# puts jobs
# # contributions with an amount less than or equal to $500
# gates = TransparencyData::Client.contributions(:contributor_ft => 'bill gates', :amount => {:lte => 500})
# puts gates
# # contributions in the 2006 or 2008 cycle
# schmidt = TransparencyData::Client.contributions(:contributor_ft => 'eric schmidt', :cycle => [2006,2008])
# puts schmidt
# # contributions to Obama made between in Q1 2008
# obama = TransparencyData::Client.contributions(:recipient_ft => 'barack obama', :date => {:between => ['2008-01-01','2008-03-31']})
# puts obama
