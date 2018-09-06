class SemesterBranchSubject < ApplicationRecord
  belongs_to :semester
  belongs_to :branch
  belongs_to :subject
end
