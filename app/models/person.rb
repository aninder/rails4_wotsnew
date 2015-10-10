class Person < ActiveRecord::Base
  has_many :addresses, as: :other
end
