class VaccinePlan < ActiveRecord::Base
  belongs_to :vaccine

  validates :vaccine, presence:true

  def vaccine_name
    self.vaccine.name
  end

  
end
