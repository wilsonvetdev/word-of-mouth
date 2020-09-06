class User < ApplicationRecord
    has_many :reviews

    validates :username, presence: true, uniqueness: true, length: { minimum: 3}
    validates :password, length: { in: 6..20 }
    has_secure_password

end
