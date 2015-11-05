class ChildDevelopmentPeriod < ActiveRecord::Base
  belongs_to :child
  belongs_to :child_development
  belongs_to :medical_center
  belongs_to :doctor
  
  validates :child, presence:true
  validates :child_development, presence:true
  validates :medical_center, presence:true
  validates :doctor, presence:true
  validates :date_contol, presence:true

  def child_name
    self.child.name
  end

  def child_development_name
    self.child_development.name
  end
              
  def medical_center_name
    self.medical_center.name
  end

  def doctor_name
    self.doctor.name
  end

  
end
