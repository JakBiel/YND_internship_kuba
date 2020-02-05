class Task < ApplicationRecord
  belongs_to :to_do_list

  validates_length_of :name, :minimum => 6
  validates_numericality_of :position, :greater_than => 0
  validates_inclusion_of :done_status, :in => %w(true false),
                                          :message => "{{value}} is not a valid boolean option"
end
