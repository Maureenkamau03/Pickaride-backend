class User < ActiveRecord::Base
    
    validates :username, presence: true
    validates :username, uniqueness: true
    has_many :orders
    has_one :rental
    
end