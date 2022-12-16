class Constraint < ApplicationRecord
  belongs_to :constrainable, polymorphic: true
  belongs_to :product
  has_many :value_configs
  
  scope :for_product, -> (pId){where('product_id = ?', pId).order('constraint.name')}

end
