class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :thumbnail, UserThumbnailUploader

  # バリデーションを設定
  validates :name, presence: true
  validates :agreement, presence: true, acceptance: {accept: true}
end
