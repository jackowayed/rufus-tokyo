
#
# Testing rufus-tokyo
#
# Sun Jan 25 12:26:48 JST 2009
#

require File.dirname(__FILE__) + '/../test_base'

require 'fileutils'
require 'rufus/tokyo/cabinet'


class CabinetOne < Test::Unit::TestCase

  def setup
    FileUtils.mkdir('tmp') rescue nil
  end

  def test_copy

    cab = Rufus::Tokyo::Cabinet.new('tmp/test_source.tch')
    5000.times { |i| cab["key #{i}"] = "val #{i}" }
    2500.times { |i| cab.delete("key #{i}") }
    assert_equal 2500, cab.size
    cab.copy('tmp/test_target.tch')
    cab.close

    cab = Rufus::Tokyo::Cabinet.new('tmp/test_target.tch')
    assert_equal 2500, cab.size
    cab.close

    FileUtils.rm('tmp/test_source.tch')
    FileUtils.rm('tmp/test_target.tch')
  end

  def test_compact_copy

    cab = Rufus::Tokyo::Cabinet.new('tmp/test_source.tch')
    100.times { |i| cab["key #{i}"] = "val #{i}" }
    50.times { |i| cab.delete("key #{i}") }
    assert_equal 50, cab.size
    cab.compact_copy('tmp/test_target.tch')
    cab.close

    cab = Rufus::Tokyo::Cabinet.new('tmp/test_target.tch')
    assert_equal 50, cab.size
    cab.close

    fs0 = File.size('tmp/test_source.tch')
    fs1 = File.size('tmp/test_target.tch')
    assert (fs0 > fs1)

    FileUtils.rm('tmp/test_source.tch')
    FileUtils.rm('tmp/test_target.tch')
  end

  def test_default

    db = Rufus::Tokyo::Cabinet.new('tmp/test_data.tch', :default => 'wrong')
    db.clear

    db['a'] = 'A'

    assert_equal 'A', db['a']
    assert_equal 'wrong', db['b']

    assert_equal 1, db.size

    db.close
  end
end

