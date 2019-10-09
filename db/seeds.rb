require 'csv'

csv_data = CSV.read(Rails.root + 'db//materials.csv')
csv_data.each do |data|
    Material.create(name: data[0], amount_of_substance: data[1]) if Material.find_by(name: data[0]) == nil
end

sentences = ['#{material}が#{amount}molあります。何グラムですか', '#{material}が#{amount}gあります。何molですか']

sentences.each do |sentence|
    Exercise.create(sentence: sentence) if Exercise.find_by(sentence: sentence) == nil
end