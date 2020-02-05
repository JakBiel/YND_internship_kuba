class Comment < ApplicationRecord
  belongs_to :to_do_list

  validates_length_of :body, :minimum => 5
end
