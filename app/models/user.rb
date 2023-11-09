class User < ApplicationRecord
  has_many :todo_lists_users, inverse_of: :user
  has_many :todo_lists, through: :todo_lists_users
  has_many :todos, through: :todo_lists
end
