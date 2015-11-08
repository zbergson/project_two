class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :blogs
  has_many :favorites
  has_many :favorite_blogs, through: :favorites, source: :favorited, source_type: 'Blog'
end
