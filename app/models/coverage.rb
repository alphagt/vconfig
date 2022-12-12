class Coverage < ApplicationRecord
	has_and_belongs_to_many :coverage_groups
	has_many :constraints, as: :constrainable
end
