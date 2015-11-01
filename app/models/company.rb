class Company < ActiveRecord::Base
    has_many :customers
    validates :name, presence:true,
                    uniqueness: {case_sensitive: false}
end
