class Post < ApplicationRecord
# Post attributes: title, body

belongs_to :user
has_many :likes
has_many :comments

end
