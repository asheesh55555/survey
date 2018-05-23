class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :answer_type

      t.timestamps
    end
  end
end
