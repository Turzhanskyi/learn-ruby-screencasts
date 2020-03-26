# frozen_string_literal: true

class Item
  @@discount = 0.1

  def self.discount
    if Time.now.month == 4
      @@discount + 0.2
    else
      @@discount
    end
  end

  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  attr_reader :name
  attr_writer :price

  def info
    yield(name)
    yield(price)
  end

  def price
    @price - @price * self.class.discount
  end
end
