# frozen_string_literal: true

require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do
  before(:each) do
    @item = Item.new('car', price: 200)
  end

  it 'calculates price according to a special formula' do
    expect(@item.price).to eq 232
    @item.price = 300
  end

  it 'returns info about on object' do
    expect(@item.to_s).to eq 'car:232.0'
  end
end
