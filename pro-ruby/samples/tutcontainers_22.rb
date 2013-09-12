require_relative 'words_from_string.rb'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
    def test_empty_string
        assert_equal([], words_from_string(""))
        assert_equal([], words_from_string("    "))
    end
    def test_single_word
        assert_equal(["cat"], words_from_string("cat"))
        assert_equal(["cat"], words_from_string(" cat "))
    end
end
