class User < ApplicationRecord
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :passwd, presence: true
    validates :about, presence: true, length: { minimum: 10 }
end
