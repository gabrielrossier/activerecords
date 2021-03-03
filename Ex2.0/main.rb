require_relative 'connection'
require_relative 'models'

#client = Client.new(firstname: 'John', lastname: 'Snow') 


client = Client.find_by(firstname: 'John')
#order = Order.new(status: 'John s Command')

#client.orders << order
<<-_
client.save
product = Product.new(name: 'dsadd',price: 0.1,description: 'Grosse description')
product.save
orderitem = OrderItem.new(quantity: 10,item_price: 0.5)
orderitem.product = product
order.order_items << orderitem

product = Product.new(name: 'dd',price: 0.7,description: 'Grosse description')
product.save
orderitem = OrderItem.new(quantity: 10,item_price: 0.5)
orderitem.product = product
order.order_items << orderitem

product = Product.new(name: 'aa',price: 0.15,description: 'Grosse description')
product.save
orderitem = OrderItem.new(quantity: 10,item_price: 0.5)
orderitem.product = product
order.order_items << orderitem

product = Product.new(name: 'bb',price: 0.6,description: 'Grosse description')
product.save
orderitem = OrderItem.new(quantity: 10,item_price: 0.5)
orderitem.product = product
order.order_items << orderitem
order.save 
_
Product.cheap.each do |product|
    product.order_items.where(order:,)
end
puts client.orders.first.order_items.first.product.cheap

#
#Client.all.each do |cli|
#puts cli.firstname + " has many orders  : "
# cli.orders.each do |order|
#    puts order.status.to_s
#    puts "order has many order items :"
#    order.order_items.each do |item|
#        puts "quantity : " + item.quantity.to_s
#        puts "order items belongs to a product : " + item.product.name.to_s
#   end
#end

#end
