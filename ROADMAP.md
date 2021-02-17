wine inventory (prototype)
===

## models

###bottle
belongs_to :producer
belongs_to :appellation

name:string
bin:string
vintage:integer
quantity:integer
producer_id:integer
appellation_id:integer

###producer
has_many :bottles
has_many :producer_appellations
has_many :appellations, through: bottles

name:string

###appellation
has_many :bottles
has_many :producer_appellations
has_many :producers, through: bottles

name:string
