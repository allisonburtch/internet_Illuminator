# combining both scripts, i guess? maybe? maybe I should have better data?

require 'transparency_data'
require 'monster_mash'
require 'hashie'
require 'rubygems'
require 'json'
require 'geocoder'
require 'sunlight'

Sunlight::Base.api_key = 'adb29164f28748dba62bb408b0043bab'
TransparencyData.api_key = 'adb29164f28748dba62bb408b0043bab'

def getcontributiondata
	#saving info to file
	filename = "contributions.txt"
	myfile = File.open(filename, "w")
	#there's no .all method so splitting by gender seemed to be easiest
# 	dudes = Sunlight::Legislator.all_where(:gender => "M")
# 	dudes.each do |dude|
# 		name = "#{dude.firstname}" + " #{dude.lastname}"
# 		committees = dude.committees
# 		#i used begin/end so i could sort the data easier in sublime
# 		myfile.puts "Begin: #{dude.firstname}" + " #{dude.lastname}:"
# 		committees.each do |names|
# 			myfile.puts "#{names.name},"
# 		end
# 		contributions = TransparencyData::Client.contributions(:contributor_ft => name)
# 		contributions.each do |dollas|
# 			# puts dollas
# 			# puts "name please work: #{dollas.committee_name}"
# 			# puts "contributor please work: #{dollas.amount}"
# 		myfile.puts "dollar amount: #{dollas.amount} committee name: #{dollas.committee_name}"

# 	end
# end
lobbyings = TransparencyData::Client.lobbying(:client_ft => "Warburg Pincus")
lobbyings.each do |lobbying|
	puts lobbying.registrant_name
	puts lobbying.client_name
	puts lobbying.lobbyist_name
	# puts "name? #{lobbying.name}"
 #  puts "Amount: #{lobbying.amount}"
 #  puts "Year: #{lobbying.year}"
end


end



getcontributiondata	


# contributions.each do |contribution|
#   puts "Amount: #{contribution.amount}"
#   puts "Date: #{contribution.date}"
# end



# lamar = TransparencyData::Client.contributions(:contributor_ft => 'Lamar Alexander')
# lamar.each do |dollas|
# 		lotsa = dollas.amount.to_i
# 		if (lotsa >= 5000)
# 			puts dollas.committee_name
# 		end

# 	end

# filename = "contributions.txt"
# myfile = File.open(filename, "w")

# lamar.each do |dollas|
# 		if (dollas.amount.to_i > 5000)
# 			puts "hello"
# 		else
# 			puts "amount" + dollas.amount
# 		end
# 	end

		#i used begin/end so i could sort the data easier in sublime
# 		myfile.puts "Begin: #{dude.firstname}" + " #{dude.lastname}:"
# 		committees.each do |names|
# 			myfile.puts "#{names.name},"
# 		end
# 		myfile.puts "end"

# 	end



# myfile.puts lamar
# myfile.close


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
