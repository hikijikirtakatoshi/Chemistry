material_hash = {硫酸: 98, 二酸化炭素: 44, 酸素: 32}
material_array = ['硫酸', '二酸化炭素', '酸素']

number_of_questions = 4

avogadro_constant = 6.0 * (10 **23)

# 質量からmolを求める問題
material = ""
rand_mol = 0

mass_to_mol_sentence = "#{material}が#{material_hash[material.to_sym].to_f * rand_mol}gあります。何molですか?"
p rand_mol

def mass_to_mol(material_array, material_hash, mass_to_mol_sentence)
    rand_material_array = rand(0..material_hash.length - 1)
    rand_mol = rand(10..100) / 10.00
    material = material_array[rand_material_array]
    return mass_to_mol_sentence
end

def mol_to_mass(material_array, material_hash)
    return "#{material_array[rand(0..material_hash.length - 1)]}が#{rand(10..100).to_f / 10}molあります。何gですか?"
end

def number_to_mol
    return "#{material_array[rand(0..material_hash.length - 1)]}が#{rand(10..100).to_f / 10}molあります。何gですか?"
end

def mol_to_number

end

(1..number_of_questions).each do |number|
    p mass_to_mol(material_array, material_hash, mass_to_mol_sentence)
    # p mol_to_mass(material_array, material_hash)
end