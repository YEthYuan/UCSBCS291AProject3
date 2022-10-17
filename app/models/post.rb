class Post < ApplicationRecord
  has_many :comments
  validates :body, presence: true
  # validates :user_id, presence: true, inclusion: { in: User.all,
  #                                               message: "User id %{value} is not in user's list"}
  validates :name, presence: true
end
