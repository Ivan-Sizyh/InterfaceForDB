class Found < ApplicationRecord
  belongs_to :library
  has_many :replenishment, class_name: 'Replenishment', foreign_key: 'found_id', dependent: :destroy

  validates :title, presence: true, length: { minimum: 2, maximum: 255 }
  validates :books, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :magazines, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :newspapers, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :collections, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :dissertations, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :essays, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
