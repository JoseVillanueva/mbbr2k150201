class ChildDevelopmentPeriod < ActiveRecord::Base
  belongs_to :Child
  belongs_to :Child_development
  belongs_to :Medical_center
  belongs_to :Doctor
end
