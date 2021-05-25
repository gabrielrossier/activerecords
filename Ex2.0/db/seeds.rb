require_relative "../connection"
require_relative "../models"
client1 = Client.create(firstname:'Gabriel', lastname: 'Rossier')
comment1 = Comment.create(content: 'Bebou',client: client1)
category = Category.create(name:'tv',description:'ok')
product1 = Product.create(name:'blabla',price: 10, category: category)
product1.provider = Provider.create(name: 'coucou')
product1.comments << comment1
Provider.first().comments << Comment.create(content: 'GOOD',client: client1)
product1.save
