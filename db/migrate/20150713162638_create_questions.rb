class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.timestamps
    end

    create_table :options  do |t|
      t.string :description
      t.integer :question_id
      t.timestamps
    end
  end
end
