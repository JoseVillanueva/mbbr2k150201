class Vaccine < ActiveRecord::Base
    has_many :vaccine_plans
    validates :name, presence:true,
                    uniqueness: {case_sensitive: false}
end
