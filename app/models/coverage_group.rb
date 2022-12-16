class CoverageGroup < ApplicationRecord
  before_create :set_code
  belongs_to :product
  has_and_belongs_to_many :coverages
  has_many :constraints, as: :constrainable
  
  def set_code
  	pd = Product.find_by_id(self.product_id)
  	self.code = "cg_" + pd.name + "_" + pd.jurisdiction + "_" + self.name
  end
end
