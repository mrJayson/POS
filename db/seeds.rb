# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#########################################################################
## Locations
#########################################################################
## Warehouse
Location.create( {
  name: "Warehouse",
  location_type: "warehouse",
  max_capacity: 1000000,
  location_id: object_id } )
                   #object_id = nil
#########################################################################
## Stores
Location.create( {
  name: "Northern Branch",
  location_type: 'store',
  max_capacity: 500,
  location_id: Location.find_by_name("Warehouse").id } )
Location.create( {
  name: "Southern Branch",
  location_type: 'store',
  max_capacity: 600,
  location_id: Location.find_by_name("Warehouse").id } )
Location.create( {
  name: "Western Branch",
  location_type: 'store',
  max_capacity: 800,
  location_id: Location.find_by_name("Warehouse").id } )
Location.create( {
  name: "Eastern Branch",
  location_type: 'store',
  max_capacity: 500,
  location_id: Location.find_by_name("Warehouse").id } )
#########################################################################
## Shelves
Location.create( {
  name: "1",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "2",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "3",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "4",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "5",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "6",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "7",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "8",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "9",
  location_type: 'shelf',
  max_capacity: 120,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "10",
  location_type: 'shelf',
  max_capacity: 100,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "11",
  location_type: 'shelf',
  max_capacity: 150,
  location_id: Location.find_by_name("Northern Branch").id } )
Location.create( {
  name: "12",
  location_type: 'shelf',
  max_capacity: 200,
  location_id: Location.find_by_name("Northern Branch").id } )

#########################################################################

t = Transaction.create({:payment_type => 'pending', product_list: []})

#########################################################################
## Products/Stock
#########################################################################

Product.create({name: 'Apple', barcode: '0000000001'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000001').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Banana',     barcode: '0000000002'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000002').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Cherry',     barcode: '0000000003'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000003').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Durian',     barcode: '0000000004'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000004').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Eggplant',   barcode: '0000000005'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000005').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Fairy Floss',barcode: '0000000006'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000006').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Grape',      barcode: '0000000007'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000007').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Hazelnut',   barcode: '0000000008'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000008').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Ice Cream',  barcode: '0000000009'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000009').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Jam',        barcode: '0000000010'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000010').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Kiwi',       barcode: '0000000011'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000011').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Lychee',     barcode: '0000000012'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000012').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Mango',      barcode: '0000000013'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000013').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Nutella',    barcode: '0000000014'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000014').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Orange',     barcode: '0000000015'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000015').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Peach',      barcode: '0000000016'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000016').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Quince',     barcode: '0000000017'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000017').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Raspberry',  barcode: '0000000018'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000018').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Strawberry', barcode: '0000000019'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000019').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Taro',       barcode: '0000000020'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000020').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Umbrella',   barcode: '0000000021'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000021').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Vinegar',    barcode: '0000000022'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000022').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Watermelon', barcode: '0000000023'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000023').id, standard_quantity: 100, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Xylophone',  barcode: '0000000024'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000024').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Yoghurt',    barcode: '0000000025'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000025').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})
Product.create({name: 'Zucchini',   barcode: '0000000026'})
Stock.create({location_id: Location.find_by_name("Warehouse").id, product_id: Product.find_by_barcode('0000000026').id, standard_quantity: 1000, quantity: 1000, price: 0, benchmark: 0})

#########################################################################

Employee.create({
  first_name: "Warehouse",
  last_name: 'Admin',
  user_name: 'admin',
  password: '1234',
  password_confirmation: '1234', 
  status: "warehouse",
  location_id: Location.find_by_name("Warehouse").id})
Employee.create({
  first_name: 'Jason',
  last_name: 'Huang',
  user_name: 'JasonHuang',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: Location.find_by_name("Northern Branch").id})
Employee.create({
  first_name: 'JasonJr',
  last_name: 'Huang',
  user_name: 'JasonJrHuang',
  password: '1234',
  password_confirmation: '1234', 
  status: "staff",
  location_id: Location.find_by_name("Northern Branch").id})
Employee.create({
  first_name: 'JasonJr1',
  last_name: 'Huang',
  user_name: 'JasonJr1Huang',
  password: '1234',
  password_confirmation: '1234', 
  status: "staff",
  location_id: Location.find_by_name("Northern Branch").id})
Employee.create({
  first_name: 'JasonJr2',
  last_name: 'Huang',
  user_name: 'JasonJr2Huang',
  password: '1234',
  password_confirmation: '1234', 
  status: "staff",
  location_id: Location.find_by_name("Northern Branch").id})
Employee.create({
  first_name: 'JasonJr3',
  last_name: 'Huang',
  user_name: 'JasonJr3Huang',
  password: '1234',
  password_confirmation: '1234', 
  status: "staff",
  location_id: Location.find_by_name("Northern Branch").id})
Employee.create({
  first_name: 'Yere',
  last_name: 'Chung',
  user_name: 'YereChung',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: Location.find_by_name("Southern Branch").id})
Employee.create({
  first_name: 'Peter',
  last_name: 'Godfrey',
  user_name: 'PeterGodfrey',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: Location.find_by_name("Western Branch").id})
Employee.create({
  first_name: 'Sheryl',
  last_name: 'Shi',
  user_name: 'SherylShi',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: Location.find_by_name("Eastern Branch").id})

#########################################################################

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Apple').id,
  standard_quantity: 100,
  quantity: 70,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Banana').id,
  standard_quantity: 100,
  quantity: 400,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Quince').id,
  standard_quantity: 100,
  quantity: 20,
  price: 3,
  benchmark: 20
})
Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Watermelon').id,
  standard_quantity: 100,
  quantity: 0,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Xylophone').id,
  standard_quantity: 30,
  quantity: 0,
  price: 3,
  benchmark: 10
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Cherry').id,
  standard_quantity: 100,
  quantity: 0,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Durian').id,
  standard_quantity: 100,
  quantity: 0,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Eggplant').id,
  standard_quantity: 30,
  quantity: 300,
  price: 3,
  benchmark: 10
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Mango').id,
  standard_quantity: 30,
  quantity: 0,
  price: 3,
  benchmark: 10
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Kiwi').id,
  standard_quantity: 100,
  quantity: 0,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Yoghurt').id,
  standard_quantity: 100,
  quantity: 0,
  price: 3,
  benchmark: 20
})

Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Taro').id,
  standard_quantity: 30,
  quantity: 300,
  price: 3,
  benchmark: 10
})
Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Vinegar').id,
  standard_quantity: 30,
  quantity: 0,
  price: 3,
  benchmark: 10
})
Stock.create({
  location_id: Location.find_by_name('Northern Branch').id,
  product_id: Product.find_by_name('Orange').id,
  standard_quantity: 100,
  quantity: 0,
  price: 3,
  benchmark: 20
})
#########################################################################

Stock.create({
  location_id: Location.find_by_name_and_location_id("1", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Apple').id,
  standard_quantity: 20,
  quantity: 30,
  price: 3,
  benchmark: 5
})
Stock.create({
  location_id: Location.find_by_name_and_location_id("1", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Quince').id,
  standard_quantity: 20,
  quantity: 20,
  price: 3,
  benchmark: 5
})
Stock.create({
  location_id: Location.find_by_name_and_location_id("1", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Watermelon').id,
  standard_quantity: 20,
  quantity: 10,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("2", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Xylophone').id,
  standard_quantity: 20,
  quantity: 30,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("2", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Banana').id,
  standard_quantity: 20,
  quantity: 20,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("2", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Kiwi').id,
  standard_quantity: 20,
  quantity: 30,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("3", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Mango').id,
  standard_quantity: 20,
  quantity: 20,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("3", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Eggplant').id,
  standard_quantity: 20,
  quantity: 10,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("3", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Orange').id,
  standard_quantity: 20,
  quantity: 30,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("4", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Taro').id,
  standard_quantity: 20,
  quantity: 20,
  price: 3,
  benchmark: 5
})

Stock.create({
  location_id: Location.find_by_name_and_location_id("5", Location.find_by_name('Northern Branch').id).id,
  product_id: Product.find_by_name('Yoghurt').id,
  standard_quantity: 20,
  quantity: 10,
  price: 3,
  benchmark: 5
})
#########################################################################
#creating members

Member.create({
  first_name: 'mickey',
  last_name: 'mouse',
  user_name: 'mickey',
})

Member.create({
  first_name: 'donald',
  last_name: 'duck',
  user_name: 'donald',
})

Member.create({
  first_name: 'pooh',
  last_name: 'bear',
  user_name: 'pooh',
})


Member.create({
  first_name: 'tigger',
  last_name: 'tiger',
  user_name: 'tigger',
})
#########################################################################
=begin
Transaction.create({
  loyalty_points_to_add: 0,
  payment_type: nil,
  product_list: nil,
  total_price: 0,
  location_id: 2,
  member_id: nil,
  employee_id: nil
  })
=end