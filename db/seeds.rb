# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#########################################################################

Product.create({name: 'Apple',      barcode: '0000000001'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000001'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Banana',     barcode: '0000000002'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000002'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Cherry',     barcode: '0000000003'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000003'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Durian',     barcode: '0000000004'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000004'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Eggplant',   barcode: '0000000005'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000005'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Fairy Floss',barcode: '0000000006'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000006'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Grape',      barcode: '0000000007'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000007'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Hazelnut',   barcode: '0000000008'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000008'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Ice Cream',  barcode: '0000000009'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000009'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Jam',        barcode: '0000000010'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000010'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Kiwi',       barcode: '0000000011'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000011'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Lychee',     barcode: '0000000012'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000012'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Mango',      barcode: '0000000013'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000013'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Nut',        barcode: '0000000014'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000014'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Orange',     barcode: '0000000015'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000015'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Peach',      barcode: '0000000016'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000016'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Quince',     barcode: '0000000017'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000017'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Raspberry',  barcode: '0000000018'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000018'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Strawberry', barcode: '0000000019'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000019'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Tangerine',  barcode: '0000000020'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000020'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Umbrella',   barcode: '0000000021'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000021'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Vinegar',    barcode: '0000000022'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000022'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Watermelon', barcode: '0000000023'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000023'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Xylophone',  barcode: '0000000024'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000024'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Yoghurt',    barcode: '0000000025'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000025'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})
Product.create({name: 'Zucchini',   barcode: '0000000026'})
Stock.create ({location_id: Location.find_by_name('Warehouse').id, product_id: Product.find_by_barcode('0000000026'), standard_quantity: 0, quantity: 0, price: 0, benchmark: 0})

#########################################################################

Location.create({name: "Warehouse", location_type: "Warehouse", max_capacity: 1000, location_id: nil})

Location.create( { name: "Central Branch", location_type: "Store",
                   max_capacity: 1000,     location_id: Location.find_by_name("Warehouse").id } )
Location.create( { name: "Western Branch", location_type: "Store",
                   max_capacity: 4500,     location_id: Location.find_by_name("Warehouse").id } )
Location.create( { name: "Southern Branch", location_type: "Store",
                   max_capacity: 1850,      location_id: Location.find_by_name("Warehouse").id } )
Location.create( { name: "Eastern Branch", location_type: "Store",
                   max_capacity: 650,      location_id: Location.find_by_name("Warehouse").id } )
Location.create( { name: "Northern Branch", location_type: "Store",
                   max_capacity: 9650,      location_id: Location.find_by_name("Warehouse").id } )

#########################################################################

Stock.create( { benchmark: 25, price: 250, quantity: 40, standard_quantity: 50,
                location_id: Location.find_by_name("Central Branch"), product_id: Product.find_by_name("Apple") } )
Stock.create( { benchmark: 12, price: 300, quantity: 20, standard_quantity: 50,
                location_id: Location.find_by_name("Northern Branch"), product_id: Product.find_by_name("Apple") } )
Stock.create( { benchmark: 22, price: 895, quantity: 25, standard_quantity: 35,
                location_id: Location.find_by_name("Central Branch"), product_id: Product.find_by_name("Orange") } )
Stock.create( { benchmark: 7, price: 250, quantity: 32, standard_quantity: 120,
                location_id: Location.find_by_name("Central Branch"), product_id: Product.find_by_name("Kiwi") } )
Stock.create( { benchmark: 2, price: 8000, quantity: 180, standard_quantity: 212,
                location_id: Location.find_by_name("Eastern Branch"), product_id: Product.find_by_name("Xylophone") } )
Stock.create( { benchmark: 18, price: 80, quantity: 56, standard_quantity: 102,
                location_id: Location.find_by_name("Eastern Branch"), product_id: Product.find_by_name("Vinegar") } )
Stock.create( { benchmark: 86, price: 280, quantity: 90, standard_quantity: 276,
                location_id: Location.find_by_name("Western Branch"), product_id: Product.find_by_name("Banana") } )
Stock.create( { benchmark: 15, price: 950, quantity: 65, standard_quantity: 99,
                location_id: Location.find_by_name("Southern Branch"), product_id: Product.find_by_name("Eggplant") } )

#########################################################################

Member.create( { first_name: "Jason", last_name: "Huang" } )
Member.create( { first_name: "Jack", last_name: "Daniels" } )
Member.create( { first_name: "Elvis", last_name: "Presley" } )
Member.create( { first_name: "Peter", last_name: "Godfrey" } )

#########################################################################

Employee.create( { first_name: "Brad", last_name: "Pitt", password_digest: "1",
                   status: "Employee", user_name: "bigdogbrad" } )
Employee.create( { first_name: "Obi-Wan", last_name: "Kenobi", password_digest: "1",
                   status: "Employee", user_name: "obi1" } )
Employee.create( { first_name: "Fred", last_name: "Flintstone", password_digest: "1",
                   status: "Employee", user_name: "freddy" } )
Employee.create( { first_name: "Bart", last_name: "Simpson", password_digest: "104",
                   status: "Manager", user_name: "barts" } )
Employee.create( { first_name: "Homer", last_name: "Simpson", password_digest: "9999",
                   status: "Employee", user_name: "DOH!" } )

#########################################################################

Transaction.create( { loyalty_points_to_add: 100, payment_type: "Cash",
                      product_list: "Apple,200,Banana,300,Kiwi,500", total_price: 1000 } )
Transaction.create( { loyalty_points_to_add: 100, payment_type: "Credit Card",
                      product_list: "Zucchini,400,Ice,100,Kiwi,500", total_price: 1000 } )
Transaction.create( { loyalty_points_to_add: 100, payment_type: "Credit Card",
                      product_list: "Xylophone,900,Orange,25,Kiwi,25,Lychee,50", total_price: 1000 } )
Transaction.create( { loyalty_points_to_add: 900, payment_type: "Cash",
                      product_list: "Raspberry,600,Strawberry,250,Kiwi,25,Lychee,25", total_price: 900 } )
