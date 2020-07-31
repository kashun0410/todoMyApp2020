class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.text :title
      t.text :content
      t.string :rank
      t.string :star
      t.string :deadline_date

      t.timestamps
    end
  end
end
