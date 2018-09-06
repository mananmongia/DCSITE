class Semester < ApplicationRecord
  belongs_to :student
  has_many :semester_branch_subjects
  has_many :subjects
  belongs_to :branch
  has_many :results
end
