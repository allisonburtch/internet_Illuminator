require 'littlesis_client'
require 'pry'

client = LittlesisClient.new('ff62bfcd96f832d0d60cb3b889fa3b0ea0577623', 'api.littlesis.org') 

fortune1000 = client.list.get_with_entities(110)
list = fortune1000.entities

people = {}
filename = "entities.txt"
myfile = File.open(filename, "w")

list.each do |company|
	leaders = client.entity.get_leadership_degree2(company.id)
	leaders.each do |leader|
		if leader.details[:is_board] == "1"
			if people.has_key?(leader.id)
				people[leader.id]["companies"] << company.name
			else
				people[leader.id] = {"name" => leader.name, "companies" => [company.name]}
			end
		end
	end
end

myfile.puts people.to_json

pry

# leadership = list.entities.first.leadership


# people = {
	# 	5502 => {
	# 'name' => 'Lee Scott',
	# 'companies' => ['Walmart', 'Goldman Sachs']
	# },
	# 40594 => {
	# 'name' => 'Joe Schmoe'
	# 'companies' => ['One Company Inc']
# }
# }


# companies.each do |company|
# company.leadership_degree2.each do |person|
# if people.has_key(person.id)
# people[id] << company.name
# else
# people[id] = [company.name]
# end
# end

# end

# people.to_json





# entity.first.details[:Orgs]



# # for finding board members
#  people.first.details[:is_board]
