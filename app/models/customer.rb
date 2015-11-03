class Customer < ActiveRecord::Base
  belongs_to :company
    has_many :children
  
  validates :name, presence:true,
                uniqueness: {case_sensitive: false}
  
  validates :company, presence:true

  def company_name
    self.company.name
  end
  
end
