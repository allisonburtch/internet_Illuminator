# using ruby wrapper for data from sunlight foundation 
# to print out lists of legislator names and the committees on which they sit
# http://services.sunlightlabs.com/docs/Sunlight_Congress_API/

require 'rubygems'
require 'json'
require 'geocoder'
require 'sunlight'

Sunlight::Base.api_key = 'adb29164f28748dba62bb408b0043bab'

def getthegoods
	#saving info to file
	filename = "congress.txt"
	myfile = File.open(filename, "w")
	#there's no .all method so splitting by gender seemed to be easiest
	dudes = Sunlight::Legislator.all_where(:gender => "M")
	ladies = Sunlight::Legislator.all_where(:gender => "F")

	dudes.each do |dude|
		newones = dude.committees
		#i used begin/end so i could sort the data easier in sublime
		myfile.puts "Begin: #{dude.firstname}" + " #{dude.lastname}:"
		newones.each do |names|
			myfile.puts "#{names.name},"
		end
		myfile.puts "end"

	end

	ladies.each do |lady|
		newones = lady.committees
		myfile.puts "Begin #{lady.firstname}" + " #{lady.lastname}:"
		newones.each do |names|
			myfile.puts "#{names.name},"
			myfile.puts "end"
		end
	end
	myfile.close
end

getthegoods

