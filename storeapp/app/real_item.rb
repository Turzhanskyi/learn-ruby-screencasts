# frozen_string_literal: true

class RealItem < Item
  attr_reader :weight

  show_info_about :weight, ->(attr) { attr > 5 }

  def initialize(options)
    @weight = options[:weight]
    super(options[:name], options)
  end

  def info
    if !@@show_info_about[:weight] || @@show_info_about[:weight].call(weight)
      yield(weight)
    end
    super
  end

  def to_s
    super + ":#{weight}"
  end
end
