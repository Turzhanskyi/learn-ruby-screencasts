# frozen_string_literal: true

class Order
  attr_reader :items

  include ItemContainer::Manager
  include ItemContainer::Info

  def initialize
    @items = []
  end

  def place
    # .....
  end
end
