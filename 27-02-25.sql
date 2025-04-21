show databases
admin                  40.00 KiB
config                108.00 KiB
local                  96.00 KiB
monday                112.00 KiB
orphanage_management  384.00 KiB
test                    8.00 KiB
use monday
switched to db monday
-- db.products.insertMany([
--   {"_id":1,"name":"xPhone","price":799,"releaseDate":ISODate("2011-05-14"),"spac":{"ram":4,"screen":6.5,"cpu":2.66},"color":["white","black"],"storage":[64,128,256]},
-- ])
-- MongoBulkWriteError: E11000 duplicate key error collection: monday.products index: _id_ dup key: { _id: 1 }
-- db.products.insertMany([
-- {"_id":2,"name":"xPhone","price":899,"releaseDate":ISODate("2011-09-01"),"spac":{"ram":16,"screen":9.5,"cpu":2.66},"color":["white","black","purple"],"storage":[128,256,512]},
-- {"_id":3,"name":"xTablet","price":899,"releaseDate":ISODate("2015-01-14"),"spac":{"ram":12,"screen":9.7,"cpu":3.66},"color":["blue"],"storage":[16,64,128]},
-- {"_id":4,"name":"SmartPad","price":699,"releaseDate":ISODate("2020-05-14"),"spac":{"ram":8,"screen":9.7,"cpu":1.66},"color":["white","orange","gold","gray"],"storage":[128,256,1024]},
-- {"_id":5,"name":"SmartPhone","price":599,"releaseDate":ISODate("2022-09-14"),"spac":{"ram":4,"screen":5.7,"cpu":1.66},"color":["white","orange","gold","gray"],"storage":[128,256]}
-- ])
-- MongoBulkWriteError: E11000 duplicate key error collection: monday.products index: _id_ dup key: { _id: 2 }
db.products.insertMany([
  {"_id":1,"name":"xPhone","price":799,"releaseDate":ISODate("2011-05-14"),"spac":{"ram":4,"screen":6.5,"cpu":2.66},"color":["white","black"],"storage":[64,128,256]},
])
{
  acknowledged: true,
  insertedIds: {
    '0': 1
  }
}
db.products.insertMany([
{"_id":2,"name":"xPhone","price":899,"releaseDate":ISODate("2011-09-01"),"spac":{"ram":16,"screen":9.5,"cpu":2.66},"color":["white","black","purple"],"storage":[128,256,512]},
{"_id":3,"name":"xTablet","price":899,"releaseDate":ISODate("2015-01-14"),"spac":{"ram":12,"screen":9.7,"cpu":3.66},"color":["blue"],"storage":[16,64,128]},
{"_id":4,"name":"SmartPad","price":699,"releaseDate":ISODate("2020-05-14"),"spac":{"ram":8,"screen":9.7,"cpu":1.66},"color":["white","orange","gold","gray"],"storage":[128,256,1024]},
{"_id":5,"name":"SmartPhone","price":599,"releaseDate":ISODate("2022-09-14"),"spac":{"ram":4,"screen":5.7,"cpu":1.66},"color":["white","orange","gold","gray"],"storage":[128,256]}
])
{
  acknowledged: true,
  insertedIds: {
    '0': 2,
    '1': 3,
    '2': 4,
    '3': 5
  }
}
show collections
Books
products
db.Books.drop()
true
show collections 
products
db.products.find(pretty)
ReferenceError: pretty is not defined
db.products.find().pretty()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spac: {
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
  name: 'xPhone',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spac: {
    ram: 16,
    screen: 9.5,
    cpu: 2.66
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
  name: 'xTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spac: {
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
  spac: {
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
  spac: {
    ram: 4,
    screen: 5.7,
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
db.products.findOne()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spac: {
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
db.products.findOne({'_id':2})
{
  _id: 2,
  name: 'xPhone',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spac: {
    ram: 16,
    screen: 9.5,
    cpu: 2.66
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
db.products.findOne({'_id':3})
{
  _id: 3,
  name: 'xTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spac: {
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
db.products.findOne({'_id':4})
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spac: {
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
db.products.findOne({'_id':5})
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spac: {
    ram: 4,
    screen: 5.7,
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
db.products.findOne({'_id':5},{name:1})
{
  _id: 5,
  name: 'SmartPhone'
}
db.products.findOne({'_id':5},{name:1},{price:2})
{
  _id: 5,
  name: 'SmartPhone'
}
db.products.findOne({'_id':5},{price:2})
{
  _id: 5,
  price: 599
}
db.products.findOne({'_id':5},{storage:6})
{
  _id: 5,
  storage: [
    128,
    256
  ]
}
db.products.findOne({'_id':5},{name:1},{price:1})
{
  _id: 5,
  name: 'SmartPhone'
}
db.products.findOne({'_id':5},{name:1,price:-500})
{
  _id: 5,
  name: 'SmartPhone',
  price: 599
}
db.products.findOne({'_id':5})
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spac: {
    ram: 4,
    screen: 5.7,
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
db.Books.insertMany([
	{ "_id" : 1, "title" : "Unlocking Android", "isbn" : "1933988673", "categories" : [ "Open Source", "Mobile" ] },
	{ "_id" : 2, "title" : "Android in Action, Second Edition", "isbn" : "1935182722", "categories" : [ "Java" ] },
	{ "_id" : 3, "title" : "Specification by Example", "isbn" : "1617290084", "categories" : [ "Software Engineering" ] },
	{ "_id" : 4, "title" : "Flex 3 in Action", "isbn" : "1933988746", "categories" : [ "Internet" ] },
	{ "_id" : 5, "title" : "Flex 4 in Action", "isbn" : "1935182420", "categories" : [ "Internet" ] },
	{ "_id" : 6, "title" : "Collective Intelligence in Action", "isbn" : "1933988312", "categories" : [ "Internet" ] },
	{ "_id" : 7, "title" : "Zend Framework in Action", "isbn" : "1933988320", "categories" : [ "Web Development" ] },
	{ "_id" : 8, "title" : "Flex on Java", "isbn" : "1933988797", "categories" : [ "Internet" ] },
	{ "_id" : 9, "title" : "Griffon in Action", "isbn" : "1935182234", "categories" : [ "Java" ] },
	{ "_id" : 10, "title" : "OSGi in Depth", "isbn" : "193518217X", "categories" : [ "Java" ] },
	{ "_id" : 11, "title" : "Flexible Rails", "isbn" : "1933988509", "categories" : [ "Web Development" ] },
	{ "_id" : 13, "title" : "Hello! Flex 4", "isbn" : "1933988762", "categories" : [ "Internet" ] },
	{ "_id" : 14, "title" : "Coffeehouse", "isbn" : "1884777384", "categories" : [ "Miscellaneous" ] },
	{ "_id" : 15, "title" : "Team Foundation Server 2008 in Action", "isbn" : "1933988592", "categories" : [ "Microsoft .NET" ] },
	{ "_id" : 16, "title" : "Brownfield Application Development in .NET", "isbn" : "1933988711", "categories" : [ "Microsoft" ] },
	{ "_id" : 17, "title" : "MongoDB in Action", "isbn" : "1935182870", "categories" : [ "Next Generation Databases" ] },
	{ "_id" : 18, "title" : "Distributed Application Development with PowerBuilder 6.0", "isbn" : "1884777686", "categories" : [ "PowerBuilder" ] },
	{ "_id" : 19, "title" : "Jaguar Development with PowerBuilder 7", "isbn" : "1884777864", "categories" : [ "PowerBuilder", "Client-Server" ] },
	{ "_id" : 20, "title" : "Taming Jaguar", "isbn" : "1884777686", "categories" : [ "PowerBuilder" ] },
	{ "_id" : 21, "title" : "3D User Interfaces with Java 3D", "isbn" : "1884777902", "categories" : [ "Java", "Computer Graphics" ] },
	{ "_id" : 22, "title" : "Hibernate in Action", "isbn" : "193239415X", "categories" : [ "Java" ] },
	{ "_id" : 23, "title" : "Hibernate in Action (Chinese Edition)", "categories" : [ "Java" ] },
	{ "_id" : 24, "title" : "Java Persistence with Hibernate", "isbn" : "1932394885", "categories" : [ "Java" ] },
	{ "_id" : 25, "title" : "JSTL in Action", "isbn" : "1930110529", "categories" : [ "Internet" ] },
	{ "_id" : 26, "title" : "iBATIS in Action", "isbn" : "1932394826", "categories" : [ "Web Development" ] },
	{ "_id" : 27, "title" : "Designing Hard Software", "isbn" : "133046192", "categories" : [ "Object-Oriented Programming", "S" ] },
	{ "_id" : 28, "title" : "Hibernate Search in Action", "isbn" : "1933988649", "categories" : [ "Java" ] },
	{ "_id" : 29, "title" : "jQuery in Action", "isbn" : "1933988355", "categories" : [ "Web Development" ] },
	{ "_id" : 30, "title" : "jQuery in Action, Second Edition", "isbn" : "1935182323", "categories" : [ "Java" ] }
]);
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5,
    '5': 6,
    '6': 7,
    '7': 8,
    '8': 9,
    '9': 10,
    '10': 11,
    '11': 13,
    '12': 14,
    '13': 15,
    '14': 16,
    '15': 17,
    '16': 18,
    '17': 19,
    '18': 20,
    '19': 21,
    '20': 22,
    '21': 23,
    '22': 24,
    '23': 25,
    '24': 26,
    '25': 27,
    '26': 28,
    '27': 29,
    '28': 30
  }
}
db.Books.find()
{
  _id: 1,
  title: 'Unlocking Android',
  isbn: '1933988673',
  categories: [
    'Open Source',
    'Mobile'
  ]
}
{
  _id: 2,
  title: 'Android in Action, Second Edition',
  isbn: '1935182722',
  categories: [
    'Java'
  ]
}
{
  _id: 3,
  title: 'Specification by Example',
  isbn: '1617290084',
  categories: [
    'Software Engineering'
  ]
}
{
  _id: 4,
  title: 'Flex 3 in Action',
  isbn: '1933988746',
  categories: [
    'Internet'
  ]
}
{
  _id: 5,
  title: 'Flex 4 in Action',
  isbn: '1935182420',
  categories: [
    'Internet'
  ]
}
{
  _id: 6,
  title: 'Collective Intelligence in Action',
  isbn: '1933988312',
  categories: [
    'Internet'
  ]
}
{
  _id: 7,
  title: 'Zend Framework in Action',
  isbn: '1933988320',
  categories: [
    'Web Development'
  ]
}
{
  _id: 8,
  title: 'Flex on Java',
  isbn: '1933988797',
  categories: [
    'Internet'
  ]
}
{
  _id: 9,
  title: 'Griffon in Action',
  isbn: '1935182234',
  categories: [
    'Java'
  ]
}
{
  _id: 10,
  title: 'OSGi in Depth',
  isbn: '193518217X',
  categories: [
    'Java'
  ]
}
{
  _id: 11,
  title: 'Flexible Rails',
  isbn: '1933988509',
  categories: [
    'Web Development'
  ]
}
{
  _id: 13,
  title: 'Hello! Flex 4',
  isbn: '1933988762',
  categories: [
    'Internet'
  ]
}
{
  _id: 14,
  title: 'Coffeehouse',
  isbn: '1884777384',
  categories: [
    'Miscellaneous'
  ]
}
{
  _id: 15,
  title: 'Team Foundation Server 2008 in Action',
  isbn: '1933988592',
  categories: [
    'Microsoft .NET'
  ]
}
{
  _id: 16,
  title: 'Brownfield Application Development in .NET',
  isbn: '1933988711',
  categories: [
    'Microsoft'
  ]
}
{
  _id: 17,
  title: 'MongoDB in Action',
  isbn: '1935182870',
  categories: [
    'Next Generation Databases'
  ]
}
{
  _id: 18,
  title: 'Distributed Application Development with PowerBuilder 6.0',
  isbn: '1884777686',
  categories: [
    'PowerBuilder'
  ]
}
{
  _id: 19,
  title: 'Jaguar Development with PowerBuilder 7',
  isbn: '1884777864',
  categories: [
    'PowerBuilder',
    'Client-Server'
  ]
}
{
  _id: 20,
  title: 'Taming Jaguar',
  isbn: '1884777686',
  categories: [
    'PowerBuilder'
  ]
}
{
  _id: 21,
  title: '3D User Interfaces with Java 3D',
  isbn: '1884777902',
  categories: [
    'Java',
    'Computer Graphics'
  ]
}
Type "it" for more
db.Books.find({categories:'Java'},{title:10})
{
  _id: 2,
  title: 'Android in Action, Second Edition'
}
{
  _id: 9,
  title: 'Griffon in Action'
}
{
  _id: 10,
  title: 'OSGi in Depth'
}
{
  _id: 21,
  title: '3D User Interfaces with Java 3D'
}
{
  _id: 22,
  title: 'Hibernate in Action'
}
{
  _id: 23,
  title: 'Hibernate in Action (Chinese Edition)'
}
{
  _id: 24,
  title: 'Java Persistence with Hibernate'
}
{
  _id: 28,
  title: 'Hibernate Search in Action'
}
{
  _id: 30,
  title: 'jQuery in Action, Second Edition'
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spac: {
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
  name: 'xPhone',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spac: {
    ram: 16,
    screen: 9.5,
    cpu: 2.66
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
  name: 'xTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spac: {
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
  spac: {
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
  spac: {
    ram: 4,
    screen: 5.7,
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
db.products.find({_id:1},{
name:1,
price:1,
"spec.screen":1
})
{
  _id: 1,
  name: 'xPhone',
  price: 799
}
db.products.find({},{
name:1,
"inventory.qty":1
})
{
  _id: 1,
  name: 'xPhone'
}
{
  _id: 2,
  name: 'xPhone'
}
{
  _id: 3,
  name: 'xTablet'
}
{
  _id: 4,
  name: 'SmartPad'
}
{
  _id: 5,
  name: 'SmartPhone'
}
db.products.find({_id:1},{
releaseDate:0,
spec:0,
storage:0
})
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  spac: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ]
}

