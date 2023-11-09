class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.references :todo_list, null: false, foreign_key: true, index: true
      t.text :description, null: false
      t.boolean :finished, null: false, default: false

      t.timestamps
    end
  end
end
