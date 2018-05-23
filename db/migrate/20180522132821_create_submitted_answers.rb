class CreateSubmittedAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :submitted_answers do |t|
      t.string :name
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
