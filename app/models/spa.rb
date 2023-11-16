class Spa < ApplicationRecord

  validates :name,           presence: true
  validates :detail ,        presence: true
  validates :facility,       presence: true
  validates :business_hours, presence: true
  validates :access,         presence: true
  validates :image,          presence: true

  belongs_to :company
  has_one_attached :image
  

  def self.search(search)
    if search != ""
      Spa.where(['name LIKE(?) OR detail LIKE(?) OR business_hours LIKE(?) OR access LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Spa.includes(:company).order('created_at DESC')
    end
  end
 
  

  
end

