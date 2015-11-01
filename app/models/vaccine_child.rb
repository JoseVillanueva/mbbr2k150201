class VaccineChild < ActiveRecord::Base
  belongs_to :Medical_center
  belongs_to :Vaccine_plan
  belongs_to :Child
end
