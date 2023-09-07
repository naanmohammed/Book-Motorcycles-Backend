@customcruisers = [
  {
    "articleID": 743942,
    "brand": "Daelim",
    "model": "Daystar",
    "category_id": 4,
    "year": "2015",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 257372,
    "brand": "Daelim",
    "model": "Daystar 125 F.I.",
    "category_id": 4,
    "year": "2008",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 895346,
    "brand": "Daelim",
    "model": "VL 125 Classic",
    "category_id": 4,
    "year": "2001",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 833095,
    "brand": "Daelim",
    "model": "VS 125",
    "category_id": 4,
    "year": "2000",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 439421,
    "brand": "Daelim",
    "model": "VT 125",
    "category_id": 4,
    "year": "1999",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@customcruisers.each do |customcruiser|
  Motorcycle.create(customcruiser)
end
