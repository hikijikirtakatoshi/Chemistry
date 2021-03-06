material_hash = {硫酸: 98, 二酸化炭素: 44, 酸素: 32}
material_array = ['硫酸', '二酸化炭素', '酸素']

number_of_questions = 4

avogadro_constant = 6.0 * (10 **23)

# 質量からmolを求める問題
def mass_to_mol(material_array, material_hash)
    rand_material_array = rand(0..material_hash.length - 1)
    rand_mol = rand(1..100) / 10.00
    p rand_mol
    material = material_array[rand_material_array]
    mass_to_mol_sentence = "#{material}が#{material_hash[material.to_sym].to_f * rand_mol}gあります。何molですか?"
    return mass_to_mol_sentence
end

def mol_to_mass(material_array, material_hash)
    rand_material_array = rand(0..material_hash.length - 1)
    rand_mol = rand(1..100) / 10.00
    material = material_array[rand_material_array]
    mol_to_mass_sentence = "#{material}が#{rand_mol}molあります。何molですか?"
    return mol_to_mass_sentence, material_hash[material.to_sym].to_f * rand_mol
end

def number_to_mol
    return "#{material_array[rand(0..material_hash.length - 1)]}が#{rand(10..100).to_f / 10}molあります。何gですか?"
end

def mol_to_number

end

function_array = [mass_to_mol(material_array, material_hash), mol_to_mass(material_array, material_hash)]

p function_array