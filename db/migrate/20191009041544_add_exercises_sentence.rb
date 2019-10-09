class AddExercisesSentence < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :sentence, :text
  end
end
