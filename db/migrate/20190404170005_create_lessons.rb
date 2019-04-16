class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :instructor_id
      t.string :subject
      t.string :title
      t.text :description
      t.string :lesson_playlist

      t.timestamps
    end
  end
end
