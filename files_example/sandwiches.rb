module Storefront
  class Sandwich
    attr_reader :meat, :bread, :condiment

    def initialize(hash_input)
       @meat = hash_input[:meat]
       @bread = hash_input[:bread]
       @condiment = hash_input[:condiment]
    end
    
  end
end