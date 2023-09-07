@scooters = [
  {
    "articleID": 764532,
    "brand": "Daelim",
    "model": "A-Four",
    "category_id": 2,
    "year": "2011",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 791088,
    "brand": "Daelim",
    "model": "Aroma 125",
    "category_id": 2,
    "year": "2016",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 738713,
    "brand": "Daelim",
    "model": "B-Bone",
    "category_id": 2,
    "year": "2017",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 828248,
    "brand": "Daelim",
    "model": "Beagle 50",
    "category_id": 2,
    "year": "2016",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 101066,
    "brand": "Daelim",
    "model": "Besbi",
    "category_id": 2,
    "year": "2017",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@scooters.each do |scooter|
  Motorcycle.create(scooter)
end
