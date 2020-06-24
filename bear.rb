class Bear

    attr_reader :name, :type
    attr_accessor :stomach

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def how_many_foods()
        return @stomach.size
    end

    # def put_food_in_stomach(name)
    #     return @stomach.push(name)
    # end

    def roar()
        return "ROAR"
    end

    def take_fish_from_river(river)
        fish = river.get_fish()
        @stomach << fish if !fish.nil?
    end


end