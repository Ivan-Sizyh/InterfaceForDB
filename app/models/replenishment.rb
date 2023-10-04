class Replenishment < ApplicationRecord
  belongs_to :library
  belongs_to :employee
  belongs_to :found
end
