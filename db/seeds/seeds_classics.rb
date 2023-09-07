@classics= [
  {
    "articleID": 931575,
    "brand": "Daelim",
    "model": "NS 125 III",
    "category_id": 9,
    "year": "2008",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 585830,
    "brand": "Daelim",
    "model": "S1",
    "category_id": 9,
    "year": "2017",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 227436,
    "brand": "Daelim",
    "model": "Steezer S",
    "category_id": 9,
    "year": "2016",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 368082,
    "brand": "Daelim",
    "model": "Witty 50",
    "category_id": 9,
    "year": "2016",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 929423,
    "brand": "Daelim",
    "model": "XQ1",
    "category_id": 9,
    "year": "2022",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@classics.each do |classic|
  Motorcycle.create(classic)
end
