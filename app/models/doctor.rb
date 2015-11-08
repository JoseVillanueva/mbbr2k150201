class Doctor < ActiveRecord::Base
    has_many    :children
    has_many    :medical_histories
    belongs_to  :medical_center
    
    validates :name, presence:true,
                uniqueness: {case_sensitive: false}

    validates :medical_center, presence:true

    def medical_center_name
        self.medical_center.name
    end
    
end
