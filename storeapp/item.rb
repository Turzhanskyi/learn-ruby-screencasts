# frozen_string_literal: true

class Item
  @@discount = 0.05

  def self.discount
    if Time.now.month == 4
      @@discount + 0.1
    else
      @@discount
    end
  end

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
  end

  attr_reader :name, :real_price
  attr_writer :price

  def info
    yield(name)
    yield(price)
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax if @real_price
  end

  def to_s
    "#{name}:#{price}:#{weight}"
  end

  private

  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    const_tax = if @real_price > 5
                  @real_price * 0.2
                else
                  @real_price * 0.1
                end
    const_tax + type_tax
  end
end
