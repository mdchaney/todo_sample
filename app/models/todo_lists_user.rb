class TodoListsUser < ApplicationRecord
  belongs_to :todo_list, inverse_of: :todo_lists_users
  belongs_to :user, inverse_of: :todo_lists_users
end
