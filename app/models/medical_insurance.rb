class MedicalInsurance < ActiveRecord::Base
    has_many :children

end
