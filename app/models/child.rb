class Child < ActiveRecord::Base
  belongs_to :Customer
  belongs_to :Medical_insurance
  belongs_to :Blood_type
  belongs_to :Birth_type
  belongs_to :Medical_center
  belongs_to :Doctor
end
