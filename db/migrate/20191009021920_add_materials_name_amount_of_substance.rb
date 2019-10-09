class AddMaterialsNameAmountOfSubstance < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :name, :string
    add_column :materials, :amount_of_substance, :integer
  end
end
