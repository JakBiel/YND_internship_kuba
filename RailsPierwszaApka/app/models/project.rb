class Project < ApplicationRecord
  has_many :to_do_lists
    #validates_associated :to_do_lists #to chyba niezbyt potrzebne, bo to rozumiem, ze musialby byc od razu isstniec jakis obiekt podrzedny przy okazji
  validates_length_of :name, :minimum => 6
end
