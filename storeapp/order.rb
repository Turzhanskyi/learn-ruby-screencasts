# frozen_string_literal: true

class Order
  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end

  def place
    thr = Thread.new do
      Pony.mail(
        to: StoreApplication::Admin.email,
        from: 'My store <jason.binwood@gmail.com>',
        via: :smtp,
        via_options: {
          address: 'smtp.gmail.com',
          port: '587',
          user_name: 'jason.binwood@gmail.com',
          password: '6bh5snql83d8',
          authentication: :plain,
          domain: 'mail.google.com'
        },
        subject: 'New order has been placed',
        body: 'Please check back you admin page!'
      )
    end
    while thr.alive?
      puts '.'
      sleep(1)
    end
  end
end
