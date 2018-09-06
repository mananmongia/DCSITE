class Branch < ApplicationRecord
  has_many :students
  has_many :semester_branch_subjects
  has_many :semesters
end
