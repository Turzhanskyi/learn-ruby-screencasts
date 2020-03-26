# frozen_string_literal: true

class Cart
  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end
end
