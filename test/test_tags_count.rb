require 'test/unit'
require 'fluent/log'
require 'fluent/test'
require 'fluent/plugin/tags_count'

unless defined?(Test::Unit::AssertionFailedError)
  class Test::Unit::AssertionFailedError < StandardError
  end
end

class TagsCountTest < Test::Unit::TestCase
  include Fluent

  setup do
    Fluent::Test.setup
    @time = Fluent::Engine.now
  end

  def create_driver(conf = '')
    Test::FilterTestDriver.new(TagsCount).configure(conf, true)
  end

  def filter(d, msgs)
    d.run {
      msgs.each {|msg|
        d.filter(msg, @time)
      }
    }
    d.filtered_as_array
  end

  test 'test_tags_count' do
    d = create_driver(%[tags_count 3])
    filtered = filter(d, data_provider)
    assert_equal 2, filtered.count
  end

  private

  def data_provider()
    [
        {
            :a => 1,
            :b => 2,
            :c => 3,
            :d => 4,
            :e => 5,
            :f => 6,
            :g => 7,
            :h => 8,
            :i => 9,
        },
        {
            :a => 1,
            :b => 2,
            :c => 3,
        },
        {
            :a => 1,
        }
    ]
  end
end
