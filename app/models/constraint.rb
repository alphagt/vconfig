class Constraint < ApplicationRecord
  belongs_to :constrainable, polymorphic: true
end
