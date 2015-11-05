class MedicalCenter < ActiveRecord::Base
    has_many :children
    has_many :doctors
    has_many :child_development_periods
    
    validates :name, presence:true,
                uniqueness: {case_sensitive: false}

end
