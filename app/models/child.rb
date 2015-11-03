class Child < ActiveRecord::Base
  belongs_to :customer
  belongs_to :blood_type
  belongs_to :birth_type
  belongs_to :medical_center
  belongs_to :medical_insurance
  belongs_to :doctor
  

  validates :name, presence:true,
                uniqueness: {case_sensitive: false}
  
  validates :customer, presence:true
  validates :blood_type, presence:true
  validates :birth_type, presence:true
  validates :medical_center, presence:true
  validates :doctor, presence:true

  def customer_name
    self.customer.name
  end

  def doctor_name
    self.doctor.name
  end
  
  def medical_insurance_name
    self.medical_insurance.name
  end

  def blood_type_name
    self.blood_type.name
  end

  def birth_type_name
    self.birth_type.name
  end

  def medical_center_name
    self.medical_center.name
  end
  
  
end
