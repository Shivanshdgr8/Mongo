db
monday
db.Students.find().pretty()
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Shubham Raj Sharma',
  location: 'Bihar'
}
-- db.Students.updateOne({name:'Shubham Raj Sharma'}, {$set:{'name':'Shubh'})
-- SyntaxError: Unexpected token, expected "," (1:73)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({name[33m:[39m[32m'Shubham Raj Sharma'[39m}[33m,[39m {$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Shubh'[39m})
--  [90m   |[39m                                                                          [31m[1m^[22m[39m[0m
-- db.Students.updateOne({'name':'Shubham Raj Sharma'}, {$set:{'name':'Shubh'})
-- SyntaxError: Unexpected token, expected "," (1:75)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({[32m'name'[39m[33m:[39m[32m'Shubham Raj Sharma'[39m}[33m,[39m {$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Shubh'[39m})
--  [90m   |[39m                                                                            [31m[1m^[22m[39m[0m
-- db.Students.updateOne({'name':'Shubham Raj Sharma'} {$set:{'name':'Shubh'})
-- SyntaxError: Unexpected token, expected "," (1:52)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({[32m'name'[39m[33m:[39m[32m'Shubham Raj Sharma'[39m} {$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Shubh'[39m})
--  [90m   |[39m                                                     [31m[1m^[22m[39m[0m
-- db.Students.updateOne({'name':'Shubham Raj Sharma'},{$set:{'name':'Shubh'})
-- SyntaxError: Unexpected token, expected "," (1:74)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({[32m'name'[39m[33m:[39m[32m'Shubham Raj Sharma'[39m}[33m,[39m{$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Shubh'[39m})
--  [90m   |[39m                                                                           [31m[1m^[22m[39m[0m
-- db.Students.updateOne({name:'Shubham Raj Sharma'},{$set:{'name':'Shubh'})
-- SyntaxError: Unexpected token, expected "," (1:72)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({name[33m:[39m[32m'Shubham Raj Sharma'[39m}[33m,[39m{$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Shubh'[39m})
--  [90m   |[39m                                                                         [31m[1m^[22m[39m[0m
db.Students.updateOne({name:'Shubham Raj Sharma'},{$set:{'name':'Shubh'}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
db.Students.find()
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Shubh',
  location: 'Bihar'
}
db.Students.insertOne({})
{
  acknowledged: true,
  insertedId: ObjectId('67d9c0124528fa06b04ca584')
}
db.Students.insertOne({
-id :1,
name: "Joy"});
-- SyntaxError: Unexpected token (2:0)

-- [0m [90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39minsertOne({
-- [31m[1m>[22m[39m[90m 2 |[39m [33m-[39mid [33m:[39m[35m1[39m[33m,[39m
--  [90m   |[39m [31m[1m^[22m[39m
--  [90m 3 |[39m name[33m:[39m [32m"Joy"[39m})[33m;[39m[0m
db.Students.insertOne({
_id :1,
name: "Joy"});
{
  acknowledged: true,
  insertedId: 1
}
db.Students.find()
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Shubh',
  location: 'Bihar'
}
{
  _id: ObjectId('67d9c0124528fa06b04ca584')
}
{
  _id: 1,
  name: 'Joy'
}
db.Students.insertOne({
_id :null,
name: "Ujjwal"});
{
  acknowledged: true,
  insertedId: ObjectId('67d9c0bd4528fa06b04ca585')
}
db.Students.insertOne({
_id :null,
name: "Shubham"});
{
  acknowledged: true,
  insertedId: ObjectId('67d9c0c34528fa06b04ca586')
}
db.Students.find()
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Shubh',
  location: 'Bihar'
}
{
  _id: ObjectId('67d9c0124528fa06b04ca584')
}
{
  _id: 1,
  name: 'Joy'
}
{
  _id: ObjectId('67d9c0bd4528fa06b04ca585'),
  name: 'Ujjwal'
}
{
  _id: ObjectId('67d9c0c34528fa06b04ca586'),
  name: 'Shubham'
}
db.Students.insertOne([
  {title:"NoSQL Distilled",isbn:"0-4696-7030-4"},
  {title:"NoSQL in 7 Days",isbn: "0-4086-6859-8"},
  {title:"NoSQL Database",isbn:"0-2504-6932-4"}]);
{
  acknowledged: true,
  insertedId: ObjectId('67d9c1a24528fa06b04ca587')
}
db.Students.drop()
true
db.Books.insertMany([
  {title:"NoSQL Distilled",isbn:"0-4696-7030-4"},
  {title:"NoSQL in 7 Days",isbn: "0-4086-6859-8"},
  {title:"NoSQL Database",isbn:"0-2504-6932-4"}]);
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('67d9c1d44528fa06b04ca588'),
    '1': ObjectId('67d9c1d44528fa06b04ca589'),
    '2': ObjectId('67d9c1d44528fa06b04ca58a')
  }
}
db.Books.find()
{
  _id: ObjectId('67d9c1d44528fa06b04ca588'),
  title: 'NoSQL Distilled',
  isbn: '0-4696-7030-4'
}
{
  _id: ObjectId('67d9c1d44528fa06b04ca589'),
  title: 'NoSQL in 7 Days',
  isbn: '0-4086-6859-8'
}
{
  _id: ObjectId('67d9c1d44528fa06b04ca58a'),
  title: 'NoSQL Database',
  isbn: '0-2504-6932-4'
}
db.Books.drop()
true
db.Books.insertOne([
  {title:"NoSQL Distilled",isbn:"0-4696-7030-4"},
  {title:"NoSQL in 7 Days",isbn: "0-4086-6859-8"},
  {title:"NoSQL Database",isbn:"0-2504-6932-4"}]);
{
  acknowledged: true,
  insertedId: ObjectId('67d9c2074528fa06b04ca58b')
}
db.Books.find()
{
  '0': {
    title: 'NoSQL Distilled',
    isbn: '0-4696-7030-4'
  },
  '1': {
    title: 'NoSQL in 7 Days',
    isbn: '0-4086-6859-8'
  },
  '2': {
    title: 'NoSQL Database',
    isbn: '0-2504-6932-4'
  },
  _id: ObjectId('67d9c2074528fa06b04ca58b')
}
monday
