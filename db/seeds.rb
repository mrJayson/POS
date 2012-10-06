# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#########################################################################


Location.create ({name: "Warehouse", location_type: 'warehouse', max_capacity: 100000, location_id: nil})

Location.create ({name: "Store1", location_type: 'store', max_capacity: 500, location_id: "Warehouse"})
Location.create ({name: "shelf1", location_type: 'shelf', max_capacity: 100, location_id: "Store1"})
Location.create ({name: "Shelf2", location_type: 'shelf', max_capacity: 100, location_id: "Store1"})

Location.create ({name: "Store2", location_type: 'store', max_capacity: 600, location_id: "Warehouse"})
Location.create ({name: "shelf1", location_type: 'shelf', max_capacity: 80, location_id: "Store2"})

Location.create ({name: "Store3", location_type: 'store', max_capacity: 800, location_id: "Warehouse"})
Location.create ({name: "shelf1", location_type: 'shelf', max_capacity: 80, location_id: "Store3"})

Location.create ({name: "Store4", location_type: 'store', max_capacity: 500, location_id: "Warehouse"})
Location.create ({name: "shelf1", location_type: 'shelf', max_capacity: 80, location_id: "Store4"})

#########################################################################

Product.create({name: 'Apple',      barcode: '0000000001'})
Product.create({name: 'Banana',     barcode: '0000000002'})
Product.create({name: 'Cherry',     barcode: '0000000003'})
Product.create({name: 'Durian',     barcode: '0000000004'})
Product.create({name: 'Eggplant',   barcode: '0000000005'})
Product.create({name: 'Fairy Floss',barcode: '0000000006'})
Product.create({name: 'Grape',      barcode: '0000000007'})
Product.create({name: 'Hazelnut',   barcode: '0000000008'})
Product.create({name: 'Ice Cream',  barcode: '0000000009'})
Product.create({name: 'Jam',        barcode: '0000000010'})
Product.create({name: 'Kiwi',       barcode: '0000000011'})
Product.create({name: 'Lychee',     barcode: '0000000012'})
Product.create({name: 'Mango',      barcode: '0000000013'})
Product.create({name: 'Nutella',    barcode: '0000000014'})
Product.create({name: 'Orange',     barcode: '0000000015'})
Product.create({name: 'Peach',      barcode: '0000000016'})
Product.create({name: 'Quince',     barcode: '0000000017'})
Product.create({name: 'Raspberry',  barcode: '0000000018'})
Product.create({name: 'Strawberry', barcode: '0000000019'})
Product.create({name: 'Taro',       barcode: '0000000020'})
Product.create({name: 'Umbrella',   barcode: '0000000021'})
Product.create({name: 'Vinegar',    barcode: '0000000022'})
Product.create({name: 'Watermelon', barcode: '0000000023'})
Product.create({name: 'Xylophone',  barcode: '0000000024'})
Product.create({name: 'Yoghurt',    barcode: '0000000025'})
Product.create({name: 'Zucchini',   barcode: '0000000026'})

#########################################################################

Employee.create({
  first_name: 'Warehouse',
  last_name: 'Admin',
  user_name: 'admin',
  password: '1234',
  password_confirmation: '1234', 
  status: "warehouse",
  location_id: Location.find_by_name("Warehouse")})
 
Employee.create({
  first_name: 'Jason',
  last_name: 'Huang',
  user_name: 'JasonHuang',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: "Store1"})
  
  Employee.create({
  first_name: 'Yere',
  last_name: 'Chung',
  user_name: 'YereChung',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: "Store2"})
  
  Employee.create({
  first_name: 'Peter',
  last_name: 'Godfrey',
  user_name: 'PeterGodfrey',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: "Store3"})
  
  Employee.create({
  first_name: 'Sheryl',
  last_name: 'Shi',
  user_name: 'SherylShi',
  password: '1234',
  password_confirmation: '1234', 
  status: "manager",
  location_id: "Store4"})