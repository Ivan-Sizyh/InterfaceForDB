class Library < ApplicationRecord
  belongs_to :type

  has_many :employes, class_name: 'Employee', foreign_key: 'library_id', dependent: :destroy

  validates :title, presence: true, length: { minimum: 2, maximum: 255 }
  validates :address, presence: true, length: { minimum: 2, maximum: 255 }
  validates :city, presence: true, length: { minimum: 2, maximum: 255 }
end
