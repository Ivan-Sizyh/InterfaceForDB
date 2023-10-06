class Replenishment < ApplicationRecord
  belongs_to :library
  belongs_to :employee
  belongs_to :found

  validates :data_receipt, presence: true
  validates :source_title, presence: true
  validates :data_replenishment, presence: true
  validates :publishing_house, presence: true
  validates :instances, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
