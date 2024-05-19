class User < ApplicationRecord
  
  has_one_attached :profile_image

  # Deviseモジュール
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:name]

  # バリデーション
  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
