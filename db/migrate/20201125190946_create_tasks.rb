class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.boolean :done
      t.datetime :due_date
      t.belongs_to :user
    end
  end
end
