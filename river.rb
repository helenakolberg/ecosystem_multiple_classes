class River

    attr_reader :name
    attr_accessor :inhabitants
    
    def initialize(name, inhabitants)
        @name = name
        @inhabitants = inhabitants
    end

    def count_fish()
        return @inhabitants.length
    end

    def remove_fish(name)
        return @inhabitants.delete(name)
    end


end