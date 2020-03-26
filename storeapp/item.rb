# frozen_string_literal: true

class Item
  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  attr_reader :price, :name
  attr_writer :price

  def info
    yield(name)
    yield(price)
  end
end
