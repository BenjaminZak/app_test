require 'csv'

namespace :shops_shopmium do
  desc "TODO"
  task import_data: :environment do
  	csv_text = File.read('shops_shopmium.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
		Shop.create(chain:row[0], name:row[1], latitude:row[2], longitude:row[3], address:row[4], city:row[5], zip:row[6], phone:row[8],)
	end
  end
end
