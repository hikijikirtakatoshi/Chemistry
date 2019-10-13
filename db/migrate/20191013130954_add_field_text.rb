class AddFieldText < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :text, :string
  end
end
