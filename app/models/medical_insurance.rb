class MedicalInsurance < ActiveRecord::Base
    has_many :children

    validates :name, presence:true
end
