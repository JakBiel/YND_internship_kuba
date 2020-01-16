class Task < ApplicationRecord
  belongs_to  :to_do_list
  has_many  :comments
end
