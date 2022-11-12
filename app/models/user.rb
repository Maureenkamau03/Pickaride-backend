class User < ActiveRecord::Base
    has_one :rental
    
end