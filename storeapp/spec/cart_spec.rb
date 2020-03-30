# frozen_string_literal: true

require 'rspec'

require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/real_item'
require_relative '../app/antique_item'
require_relative '../app/item_container'
require_relative '../app/cart'

describe Cart do
  describe 'managing items' do
    it 'adds items into the cart' do
      cart = Cart.new('vitalii')
      item1 = Item.new('kettle', price: 200)
      item2 = Item.new('car', price: 200)
      cart.add_items(item1, item2)
      expect(cart.items).to include(item1, item2)
    end

    it 'removes items from itself'
  end

  it 'counts items in itself'
  it 'places order using all items that were added into the cart'
end
