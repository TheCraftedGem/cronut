require 'pry'  
require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/item_repo'
require 'json'

class ItemTest < Minitest::Test

  def setup 
    @item_collection = JSON.parse(File.read('./data/cronut.json'))["items"]["item"]
    @item_repo = ItemRepo.new
    @item_repo.load(@item_collection)
  end

  def test_it_exists
    item = Item.new(@item_collection[0])
    assert_instance_of Item, item
  end

  def test_it_has_id 
    item = Item.new(@item_collection[0])
    assert_equal "0001", item.id
  end

  def test_it_can_load_items
    item_repo = ItemRepo.new
    item_repo.load(@item_collection)
    assert_equal "0001", item_repo.collection[0].id
    assert_equal "0002", item_repo.collection[1].id
    assert_equal "0003", item_repo.collection[2].id
    binding.pry
  end

end
