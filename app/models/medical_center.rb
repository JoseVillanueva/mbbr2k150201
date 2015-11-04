class MedicalCenter < ActiveRecord::Base
    has_many :children
    has_many :doctors
    
    validates :name, presence:true,
                uniqueness: {case_sensitive: false}

end
