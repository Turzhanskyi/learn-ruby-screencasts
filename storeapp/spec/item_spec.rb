# frozen_string_literal: true

require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do
  it 'calculates price according to a special formula' do
    item = Item.new('car', price: 200)
    expect(item.price).to eq 232
  end
end
