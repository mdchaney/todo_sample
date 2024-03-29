class TodoList < ApplicationRecord
  has_many :todo_lists_users, inverse_of: :todo_list
  has_many :users, through: :todo_lists_users

  has_many :todos, inverse_of: :todo_list
end
