require 'csv'

csv_data = CSV.read(Rails.root + "db//materials.csv")
csv_data.each do |data|
    Material.create(name: data[0], amount_of_substance: data[1])
end