module Storefront
  class Perishables < Sandwich
    def initialize(hash_input)
       super
       @shelflife = hash_input[:shelflife]
     end
  end
end