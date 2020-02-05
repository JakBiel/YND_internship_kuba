class ToDoList < ApplicationRecord
  belongs_to :project
  has_many :tasks
  has_many :comments

end
