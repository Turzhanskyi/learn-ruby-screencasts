# frozen_string_literal: true

class Order
  attr_reader :items, :placed_at, :time_spent_on_sending_email

  include ItemContainer

  def initialize
    @items = []
    # ....
  end

  def place
    # @placed_at = Time.now
    # thr = Thread.new do
    #   Pony.mail(
    #     to: StoreApplication::Admin.email,
    #     from: 'My store <cpl.km.ua@gmail.com>',
    #     via: :smtp,
    #     via_options: {
    #       address: 'smtp.gmail.com',
    #       port: '587',
    #       enable_starttls_auto: true,
    #       user_name: 'cpl.km.ua@gmail.com',
    #       password: '********',
    #       authentication: :plain,
    #       domain: 'smtp.gmail.com'
    #     },
    #     subject: 'New order has been placed',
    #     body: 'Please check back you admin page to see it!'
    #   )
    # end
    # while thr.alive?
    #   puts '.'
    #   sleep(1)
    # end
    # sent_email_at = Time.now
    # @time_spent_on_sending_email = sent_email_at - @placed_at
  end
end
