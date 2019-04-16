class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :question
      t.string :choices
      t.string :answers
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
