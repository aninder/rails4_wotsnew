class Address < ActiveRecord::Base
  belongs_to :other, polymorphic: true
end
