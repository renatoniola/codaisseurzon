Product.destroy_all
User.destroy_all

product1 = Product.create!(name: 'iphone 17 plus',
  description: 'iphone 17 plusYr kitsch edison bulb, aesthetic tofu vape pop-up fam humblebrag franzen chambray semiotics. ',
  price: 1000.00)

product2 = Product.create!(name: 'samsung 10',
  description: 'samsung 10 Yr kitsch edison bulb, aesthetic tofu vape pop-up fam humblebrag franzen chambray semiotics. ',
  price: 300.00)

product3 = Product.create!(name: 'huawei 10',
  description: 'huawei 10 10 Yr kitsch edison bulb, aesthetic tofu vape pop-up fam humblebrag franzen chambray semiotics. ',
  price: 150.00)

product4 = Product.create!(name: 'nokia 100',
  description: 'nokia10 10 Yr kitsch edison bulb, aesthetic tofu vape pop-up fam humblebrag franzen chambray semiotics. ',
  price: 500.00)
product5 = Product.create!(name: 'sony xpiria',
  description: 'sony xpiria Yr kitsch edison bulb, aesthetic tofu vape pop-up fam humblebrag franzen chambray semiotics. ',
  price: 67.00)

erle =    User.create!(email: "erle@codaisseurzon.com", password: "abcd1234")
iryna =   User.create!(email: "iryna@codaisseurzon.com", password: "abcd1234")
renato =  User.create!(email: "renato@codaisseurzon.com", password: "abcd1234")
anissa =  User.create!(email: "anissa@codaisseurzon.com", password: "abcd1234")
felippe = User.create!(email: "felippe@codaisseurzon.com", password: "abcd1234")


Cart.create!(total: 400.0, count: 2)
Cart.create!(total: 300.0, count: 3)
Cart.create!(total: 200.0, count: 1)
