show databases
admin                  40.00 KiB
config                 72.00 KiB
local                  96.00 KiB
orphanage_management  384.00 KiB
test                    8.00 KiB
vit                    24.00 KiB
use vit
switched to db vit
show databases
admin                  40.00 KiB
config                108.00 KiB
local                  96.00 KiB
orphanage_management  384.00 KiB
test                    8.00 KiB
vit                    24.00 KiB
db
vit
db.dropDatabase
[Function: dropDatabase] AsyncFunction {
  apiVersions: [ 1, Infinity ],
  returnsPromise: true,
  serverVersions: [ '0.0.0', '999.999.999' ],
  topologies: [ 'ReplSet', 'Sharded', 'LoadBalanced', 'Standalone' ],
  returnType: { type: 'unknown', attributes: {} },
  deprecated: false,
  platforms: [ 'Compass', 'Browser', 'CLI' ],
  isDirectShellCommand: false,
  acceptsRawInput: false,
  shellCommandCompleter: undefined,
  help: [Function (anonymous)] Help
}
db.dropDatabase()
{ ok: 1, dropped: 'vit' }
db
vit
use vit
already on db vit
use monday
switched to db monday
db.createCollection("Students")
{ ok: 1 }
db
monday
show collections
Students
db.createCollection("Results")
{ ok: 1 }
show collections
Results
Students
db.Results.drop()
true
show collections
Students
db.Students.insertOne({name:'Shubham V', location:'Samastipur'})
{
  acknowledged: true,
  insertedId: ObjectId('67d9b903726d52f6470e5b75')
}
db.Students.insertOne({name:'Shubham Raj Sharma', location:'Bihar'})
{
  acknowledged: true,
  insertedId: ObjectId('67d9b946726d52f6470e5b76')
}
db.Students.find()
{
  _id: ObjectId('67d9b903726d52f6470e5b75'),
  name: 'Shubham V',
  location: 'Samastipur'
}
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Shubham Raj Sharma',
  location: 'Bihar'
}
db.Students.deleteOne({name:'Shubham V'})
{acknowledged: true,
  insertedId: ObjectId('67d9b903726d52f6470e5b75')
}
