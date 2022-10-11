class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  # belongs_to :user

  validates :body, presence: true
  # validates :user_id, presence: true, inclusion: { in: User.all,
  #                                               message: "User id %{value} is not in user's list"}
  validates :user_id, presence: true, validates_associated :users
end
