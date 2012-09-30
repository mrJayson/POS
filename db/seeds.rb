# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create({name: 'Apple',     barcode: '0000000001'})
Product.create({name: 'Banana',    barcode: '0000000002'})
Product.create({name: 'Cherry',    barcode: '0000000003'})
Product.create({name: 'Durian',    barcode: '0000000004'})
Product.create({name: 'Eggfruit',  barcode: '0000000005'})
Product.create({name: 'Fairy Floss',barcode: '0000000006'})
Product.create({name: 'Grape',     barcode: '0000000007'})
Product.create({name: 'Hazelnut',  barcode: '0000000008'})
Product.create({name: 'Ice',  barcode: '0000000009'})
Product.create({name: 'Jam',  barcode: '0000000010'})
Product.create({name: 'Kiwi',  barcode: '0000000011'})
Product.create({name: 'Lychee',  barcode: '0000000012'})
Product.create({name: 'Mango',  barcode: '0000000013'})
Product.create({name: 'Nutella',  barcode: '0000000014'})
Product.create({name: 'Orange',  barcode: '0000000015'})
Product.create({name: 'Peach',  barcode: '0000000016'})
Product.create({name: 'Quiche',  barcode: '0000000017'})
Product.create({name: 'Raspberry',  barcode: '0000000018'})
Product.create({name: 'Sandwich',  barcode: '0000000019'})
Product.create({name: 'Taco',  barcode: '0000000020'})
Product.create({name: 'Umbrella',  barcode: '0000000021'})
Product.create({name: 'Vinegar',  barcode: '0000000022'})
Product.create({name: 'Watermelon',  barcode: '0000000023'})
Product.create({name: 'Xylophone',  barcode: '0000000024'})
Product.create({name: 'Yoghurt',  barcode: '0000000025'})
Product.create({name: 'Zucchini',  barcode: '0000000026'})

#########################################################################

Store.create({name: 'Central Branch', max_capacity: 2000})
Store.create({name: 'Western Branch', max_capacity: 800})
Store.create({name: 'Southern Branch', max_capacity: 1200})
Store.create({name: 'Eastern Branch', max_capacity: 1000})
Store.create({name: 'Northern Branch', max_capacity: 900})

Store.create({name: 'Central Branch', max_capacity: 2000})
Store.create({name: 'Western Branch', max_capacity: 800})
Store.create({name: 'Southern Branch', max_capacity: 1200})
Store.create({name: 'Eastern Branch', max_capacity: 1000})
Store.create({name: 'Northern Branch', max_capacity: 900})

#########################################################################

Warehouse.create({max_capacity: 10000, current_capacity: 600})

#########################################################################
StoreProductInfo.create({
  product_id: Product.find_by_name('Apple').id,
   store_id: Store.find_by_name('Northern Branch').id,
    price:2})
StoreProductInfo.create({
  product_id: Product.find_by_name('Banana').id,
   store_id: Store.find_by_name('Eastern Branch').id,
    price:3})
StoreProductInfo.create({
  product_id: Product.find_by_name('Cherry').id,
   store_id: Store.find_by_name('Southern Branch').id,
    price:10})
StoreProductInfo.create({
  product_id: Product.find_by_name('Durian').id,
   store_id: Store.find_by_name('Western Branch').id,
    price:5})
StoreProductInfo.create({
  product_id: Product.find_by_name('Eggfruit').id,
   store_id: Store.find_by_name('Northern Branch').id, 
   price:7})

#########################################################################

WarehouseProductInfo.create({
  product_id: Product.find_by_name('Apple').id, 
  quantity:100
})


WarehouseProductInfo.create({
  product_id: Product.find_by_name('Banana').id, 
  quantity:200
})


WarehouseProductInfo.create({
  product_id: Product.find_by_name('Durian').id, 
  quantity:300
})

#########################################################################

OrderToWarehouse.create({
  store_id: Store.find_by_name('Northern Branch').id,
  warehouse_id: 1, 
  order_status: 'completed'  
})

OrderToWarehouse.create({
  store_id: Store.find_by_name('Eastern Branch').id,
  warehouse_id: 1, 
  order_status: 'waiting'
})

OrderToWarehouse.create({
  store_id: Store.find_by_name('Southern Branch').id,
  warehouse_id: 1, 
  order_status: 'sent'
})

OrderToWarehouse.create({
  store_id: Store.find_by_name('Western Branch').id,
  warehouse_id: 1, 
  order_status: 'waiting'
})

OrderToWarehouse.create({
  store_id: Store.find_by_name('Central Branch').id,
  warehouse_id: 1, 
  order_status: 'waiting'
})

#########################################################################

User.create({
  first_name: 'Jason',
  last_name: 'Huang',
  user_name: 'JasonHuang',
  password: '1234',
  password_confirmation: '1234', 
  store_id: Store.find_by_name('Northern Branch').id})
  
User.create({
  first_name: 'Yeri',
  last_name: 'Chung',
  user_name: 'YeriChung',
  password: '1234',
  password_confirmation: '1234', 
  store_id: Store.find_by_name('Southern Branch').id})
  
User.create({
  first_name: 'Sheryl',
  last_name: 'Shi',
  user_name: 'SherylShi',
  password: '1234',
  password_confirmation: '1234', 
  store_id: Store.find_by_name('Eastern Branch').id})
  
User.create({
  first_name: 'Peter',
  last_name: 'Godfrey',
  user_name: 'PeterGodfrey',
  password: '1234',
  password_confirmation: '1234', 
  store_id: Store.find_by_name('Western Branch').id})



