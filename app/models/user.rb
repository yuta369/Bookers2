class User < ApplicationRecord
  
  has_one_attached :profile_image

  # Deviseモジュール
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:name]
         
  has_many :books, dependent: :destroy

  # バリデーション
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { in: 2..20 }
  validates :introduction, length: { maximum: 50 }

end
