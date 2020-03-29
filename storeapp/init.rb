# frozen_string_literal: true

require_relative 'store_application'

StoreApplication.new

@items = []
@items << AntiqueItem.new('car', price: 101, weight: 100)
@items << RealItem.new(price: 101, weight: 100, name: 'kettle')
@items << RealItem.new(price: 101, weight: 100, name: 'dishwasher')

cart = Cart.new('roman')
cart.add_item RealItem.new(price: 101, weight: 100, name: 'car')
cart.add_item RealItem.new(price: 150, weight: 100, name: 'car')
cart.add_item RealItem.new(price: 120, weight: 100, name: 'kettle')

p cart.all_cars
p cart.all_kettle
