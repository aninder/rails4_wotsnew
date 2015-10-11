class Address < ActiveRecord::Base
  belongs_to :other, polymorphic: true, :counter_cache => true
end
