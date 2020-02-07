class ToDoList < ApplicationRecord
  belongs_to :project
  has_many :tasks
  has_many :comments

  #validates_associated :tasks #to chyba niezbyt potrzebne, bo to rozumiem, ze musialby byc od razu isstniec jakis obiekt podrzedny przy okazji
  #validates_associated :comments  #to chyba niezbyt potrzebne, bo to rozumiem, ze musialby byc od razu isstniec jakis obiekt podrzedny przy okazji
  validates_length_of :name, :minimum => 6


end
