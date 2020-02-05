class Task < ApplicationRecord
  belongs_to :to_do_list

  #validates_length_of :name, :minimum => 6
  #validates_numericality_of :position, :greater_than => 0
  #validates_inclusion_of :done_status, :in => %w(true false),
  #                                        :message => "Value of done_status is not a valid boolean option"
  #validates_exclusion_of :done_status, :in => %w(true),
  #                       :message => "Done_status should be <<false>> in moment of creation by default."
end
