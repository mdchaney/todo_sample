class Todo < ApplicationRecord
  belongs_to :todo_list, inverse_of: :todos
  has_many :users, through: :todo_list
end
