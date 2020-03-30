# frozen_string_literal: true

require_relative 'app/store_application'

StoreApplication.config do |app|
  app.name = 'My Store'
  app.environment = :production

  app.admin do |admin|
    admin.email = 'cpl.km.ua@gmail.com'
    admin.login = 'admin'
    admin.send_info_email_on :mondays
  end
end

@items = []
@items << AntiqueItem.new('car', price: 101, weight: 100)
@items << RealItem.new(price: 101, weight: 100, name: 'kettle')
@items << RealItem.new(price: 101, weight: 100, name: 'dishwasher')

cart = Cart.new('roman')
cart.add_item RealItem.new(price: 101, weight: 100, name: 'car')
cart.add_item RealItem.new(price: 150, weight: 100, name: 'car')
cart.add_item RealItem.new(price: 120, weight: 100, name: 'kettle')

order = Order.new
@items.each { |i| order.add_item(i) }
order.place
puts order.placed_at.strftime('%b %-d, %Y %H:%M:%S')
puts order.time_spent_on_sending_email
