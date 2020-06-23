require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

    def setup()
        @fish1 = Fish.new("Sally")
        @fish2 = Fish.new("Jim")
        @fish3 = Fish.new("Laura")
        @inhabitants = [@fish1, @fish2, @fish3]
        @river = River.new("Spey", @inhabitants)
    end

    def test_name()
        assert_equal("Spey", @river.name)
    end

    def test_number_of_fish()
        assert_equal(3, @river.count_fish())
    end

    def test_remove_fish()
        @river.remove_fish(@fish1)
        assert_equal(2, @river.count_fish())
    end

end