class AddQuestionFieldId < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :field_id, :integer
  end
end
