class Spa < ApplicationRecord

  validates :name,           presence: true
  validates :detail ,        presence: true
  validates :facility,       presence: true
  validates :business_hours, presence: true
  validates :access,         presence: true
  validates :image,          presence: true

  belongs_to :company
  has_one_attached :image
end
