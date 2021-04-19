class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #User attributes: username, name, email, encrypted password

  has_many :friendships, foreign_key: :user_id #, class_name: 'Friendship'
  has_many :friends, through: :friendships

  has_many :sent_friend_requests, foreign_key: :requesting_friend_id, class_name: 'Request'
  has_many :requested_friends, through: :sent_friend_requests

  has_many :received_friend_requests, foreign_key: :requested_friend_id, class_name: 'Request'
  has_many :requesting_friends, through: :received_friend_requests

  has_many :posts

end