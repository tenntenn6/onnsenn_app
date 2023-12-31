class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角（漢字・ひらがな・カタカナ）を使用してください' } do
    validates :company_name
    validates :user_name  
  end
    
  with_options presence: true, format: { with: /\A[ぁ-んー－]+\z/, message: '全角（ひらがな）を使用してください' } do
    validates :company_name_kana
    validates :user_name_kana
  end
    
    
  with_options presence: true do
    validates :email        ,format: {with: /[\w\-._]+@[\w\-._]+\.[A-Za-z]+/}
    validates :encrypted_password
    validates :telephone    ,format: {with: /\A\d{11}\z/ }
    validates :post_code    ,format: {with: /\A\d{3}[-]\d{4}\z/}
    validates :address
  end


  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください' 


  has_many :spas
end
