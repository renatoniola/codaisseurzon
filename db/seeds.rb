# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Product.destroy_all

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


photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516711189/Products/iphone.jpg", product: product1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516711189/Products/samsung.webp", product: product2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516711189/Products/uawei.jpg", product: product3)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516711189/Products/nokia.jpg", product: product4)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/irinaovdii/image/upload/v1516711189/Products/sony_xpiria.jpg", product: product5)
