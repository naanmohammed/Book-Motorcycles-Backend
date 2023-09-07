@minibikesports = [
  {
    "articleID": 651501,
    "brand": "Daelim",
    "model": "S-Five",
    "category_id": 7,
    "year": "2010",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 147812,
    "brand": "Daelim",
    "model": "S-One",
    "category_id": 7,
    "year": "2010",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 392443,
    "brand": "Daelim",
    "model": "S2 125",
    "category_id": 7,
    "year": "2006",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 54040,
    "brand": "Daelim",
    "model": "S2 125 Fi Freewing",
    "category_id": 7,
    "year": "2008",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 721086,
    "brand": "Daelim",
    "model": "S3",
    "category_id": 7,
    "year": "2011",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@minibikesports.each do |minibikesport|
  Motorcycle.create(minibikesport)
end
