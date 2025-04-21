use monday
already on db monday
show collections
Books
products
db.Books.drop()
true
db.products.drop()
true
show collections
db.products.insertMany([
    { "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate": ISODate("2011-05-14"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 },"color":["white","black"],"storage":[64,128,256]},
    { "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate": ISODate("2011-09-01") , "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 },"color":["white","black","purple"],"storage":[128,256,512]},
    { "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate": ISODate("2015-01-14"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 },"color":["blue"],"storage":[16,64,128]},
    { "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate": ISODate("2020-05-14"),"spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256,1024]},
    { "_id" : 5, "name" : "SmartPhone", "price" : 599,"releaseDate": ISODate("2022-09-14"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256]}
 ])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5
  }
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
-- db.products.find({price:{$eq:899},{name:1,price:1}})
-- SyntaxError: Unexpected token (1:34)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39mproducts[33m.[39mfind({price[33m:[39m{$eq[33m:[39m[35m899[39m}[33m,[39m{name[33m:[39m[35m1[39m[33m,[39mprice[33m:[39m[35m1[39m}})
--  [90m   |[39m                                   [31m[1m^[22m[39m[0m
db.products.find({price:{$eq:899}},{name:1,price:1})
{
  _id: 2,
  name: 'xTablet',
  price: 899
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899
}
db.products.find({"spec.ram":{$eq:4}},{name:1,"spec.ram":1})
{
  _id: 1,
  name: 'xPhone',
  spec: {
    ram: 4
  }
}
{
  _id: 5,
  name: 'SmartPhone',
  spec: {
    ram: 4
  }
}
db.products.find({
color:{
$eq:"blue"}}
,{name:1,
color:1})
{
  _id: 3,
  name: 'SmartTablet',
  color: [
    'blue'
  ]
}
db.products.find({
releaseDate:{
$eq: new ISODate("2020-05-14")
}
},{
name:1,
releaseDate:1
})
{
  _id: 4,
  name: 'SmartPad',
  releaseDate: 2020-05-14T00:00:00.000Z
}
db.products.find({price:{$in:[699,799]}},{name:1,price:1})
{
  _id: 1,
  name: 'xPhone',
  price: 799
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699
}
db.products.find({color:{$in:['green','white']}},{name:1,price:1})
{
  _id: 1,
  name: 'xPhone',
  price: 799
}
{
  _id: 2,
  name: 'xTablet',
  price: 899
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599
}
db.products.find({
color:{
$in:[/^g+/,/^w+/]}}
,{name:1,
color:1
})
{
  _id: 1,
  name: 'xPhone',
  color: [
    'white',
    'black'
  ]
}
{
  _id: 2,
  name: 'xTablet',
  color: [
    'white',
    'black',
    'purple'
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ]
}
monday
Selection deleted
