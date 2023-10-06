class Type < ApplicationRecord
  has_many :libraries, class_name: "Library", foreign_key: "type_id", dependent: :destroy

  validates :library_type, presence: true, length: { minimum: 2, maximum: 255 }
end
