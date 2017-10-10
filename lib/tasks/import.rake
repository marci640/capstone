require 'csv'

namespace :states do 
  desc "Import data from csv"
  task import: :environment do 
    filename = File.join Rails.root, "medicare_states.csv"
    CSV.foreach(filename) do |row|
      State.create({
    code: row[0],
    abbrev: row[1]
        })
    end
  end 
end 

namespace :rates do 
  desc "Import data from csv"
  task import: :environment do 
    filename = File.join Rails.root, "medicare.csv"
    CSV.foreach(filename) do |row|
      Rate.create({
    facility_fee: row[6],
    carrier_num: row[1],
    procedure_code: row[3],
        })
    end
  end 
end 



# items = []
# filename = File.join Rails.root, "medicare.csv"
# CSV.foreach(filename) do |row|
#   rates << Rate.new(row[6])
# end
# Rate.import(rates)
