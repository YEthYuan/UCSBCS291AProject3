class User < ApplicationRecord
    validates :name, presence: true
    validates :passwd, presence: true
    validates :about, presence: true, length: { minimum: 10 }
end
