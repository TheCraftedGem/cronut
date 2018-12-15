require 'pry'  
require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_repo'
require './lib/batter'
require 'json'

class BatterTest < Minitest::Test

  def setup 
    @item_collection = JSON.parse(File.read('./data/cronut.json'))
    @item_repo = ItemRepo.new
    @item_repo.load(@item_collection)
  end

  def test_it_exists
    
  end

end