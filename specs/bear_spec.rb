require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Winnie", "brown")
        @fish1 = Fish.new("Sally")
        @fish2 = Fish.new("Jim")
        @fish3 = Fish.new("Laura")
        @inhabitants = [@fish1, @fish2, @fish3]
        @river = River.new("Spey", @inhabitants)
    end

    def test_name()
        assert_equal("Winnie", @bear.name)
    end

    def test_type()
        assert_equal("brown", @bear.type)
    end

    def test_how_many_foods_eaten()
        assert_equal(0, @bear.how_many_foods)
    end

    def test_bear_gets_fish()
        @bear.put_food_in_stomach(@fish1)
        @bear.put_food_in_stomach(@fish2)
        @river.remove_fish(@fish1)
        @river.remove_fish(@fish2)
        assert_equal(2, @bear.how_many_foods())
        assert_equal(1, @river.count_fish())
    end

    def test_bear_roars()
        assert_equal("ROAR", @bear.roar())
    end


end