class Candy < ApplicationRecord
    belongs_to :shop
    belongs_to :shelf, { :optional => true }

    scope :unshelved_candies, lambda { where(:is_shelved => false) }
    
    validates_presence_of :name
end
