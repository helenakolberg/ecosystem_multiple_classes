require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class FishTest < MiniTest::Test

    def setup()
        @fish = Fish.new("Paul")
    end

    def test_name
        assert_equal("Paul", @fish.name)
    end


end