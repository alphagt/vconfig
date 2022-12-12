class CoverageGroup < ApplicationRecord
  belongs_to :product
  has_and_belongs_to_many :coverages
  has_many :constraints, as: :constrainable
end
