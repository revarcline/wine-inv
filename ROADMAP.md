wine inventory (prototype)
===

## models

###bottle
belongs_to :producer
belongs_to :appellation

name:string
vintage:integer
quantity:integer

###producer
has_many :bottles
has_many :producer_appellations
has_many :appellations, through: producer_appellations

name:string

###appellation
has_many :bottles
has_many :producer_appellations
has_many :producers, through: appellations

name:string

###producer_regions
belongs_to :producer
belongs_to :appellations
