class Rental < ActiveRecord::Base
  belongs_to :car
  belongs_to :user

end