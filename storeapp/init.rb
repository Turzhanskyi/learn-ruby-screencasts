# frozen_string_literal: true

require_relative 'cart'
require_relative 'item'

cart = Cart.new
cart.add_item(Item.new)
cart.add_item(Item.new)

cart.validate

p cart.items

cart.remove_item

p cart.items
