class MedicalHistory < ActiveRecord::Base
  belongs_to :Medical_insurance
  belongs_to :Medical_center
  belongs_to :Medicine
  belongs_to :Medical_exam
  belongs_to :Doctor
  belongs_to :Child
  belongs_to :Health_problem
end
