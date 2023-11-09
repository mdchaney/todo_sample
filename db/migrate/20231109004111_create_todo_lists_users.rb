class CreateTodoListsUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_lists_users do |t|
      t.references :todo_list, null: false, foreign_key: true, index: true
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
