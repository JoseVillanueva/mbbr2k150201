class Doctor < ActiveRecord::Base
    has_many :children
    belongs_to :medical_center
    
    validates :name, presence:true,
                uniqueness: {case_sensitive: false}
    
end
