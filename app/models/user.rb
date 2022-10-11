class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :passwd, presence: true
    validates :about, presence: true, length: { minimum: 10 }
end
