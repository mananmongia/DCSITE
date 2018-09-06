class Subject < ApplicationRecord
  has_many :semesters
  has_many :results
end
