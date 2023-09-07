require 'faker'

p "Seed started"
p "------------------"

p "Creating users"
require File.expand_path('db/seeds/seeds_user', Rails.root)
p "------------------"

p "------------------"
p "Creating categories"
require File.expand_path('db/seeds/seeds_category', Rails.root)
p "------------------"

p "------------------"
p "Creating motorcycles"
require File.expand_path('db/seeds/seeds_sports', Rails.root)
require File.expand_path('db/seeds/seeds_scooters', Rails.root)
require File.expand_path('db/seeds/seeds_nakedbikes', Rails.root)
require File.expand_path('db/seeds/seeds_customcruisers', Rails.root)
require File.expand_path('db/seeds/seeds_crossmotocross', Rails.root)
require File.expand_path('db/seeds/seeds_supermotard', Rails.root)
require File.expand_path('db/seeds/seeds_minibikesport', Rails.root)
require File.expand_path('db/seeds/seeds_minibikecross', Rails.root)
require File.expand_path('db/seeds/seeds_classics', Rails.root)
p "------------------"

p "------------------"
p "------------------"
p "Created #{User.count} users"
p "------------------"
p "Created #{Category.count} categories"
p "------------------"
p "Created #{Motorcycle.count} motorcycles"
p "------------------"
p "Seed finished"
p "------------------"
p "------------------"
