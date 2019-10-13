material_hash = {硫酸: 98, 二酸化炭素: 44, 酸素: 32}
material_array = ['硫酸', '二酸化炭素', '酸素']

number_of_questions = 4

avogadro_constant = 6.0 * 10 **23

def mass_to_mol(material_array, material_hash)
    return "#{material_array[rand(0..material_hash.length - 1)]}が#{material_hash[:硫酸].to_f / rand(10..100)}gあります。何molですか?"
end

def mol_to_mass(material_array, material_hash)
    return "#{material_array[rand(0..material_hash.length - 1)]}が#{rand(10..100).to_f / 10}molあります。何gですか?"
end

def number_to_mol

end

def mol_to_number

end

(1..number_of_questions).each do |number|
    # p mass_to_mol(material_array, material_hash)
    p mol_to_mass(material_array, material_hash)
end


