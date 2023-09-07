@minibikecross = [
  {
    "articleID": 443396,
    "brand": "Daelim",
    "model": "S300",
    "category_id": 8,
    "year": "2018",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 282828,
    "brand": "Daelim",
    "model": "S4 50",
    "category_id": 8,
    "year": "2011",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 472642,
    "brand": "Daelim",
    "model": "S5 50",
    "category_id": 8,
    "year": "2013",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 25615,
    "brand": "Daelim",
    "model": "Steezer",
    "category_id": 8,
    "year": "2017",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  },
  {
    "articleID": 103279,
    "brand": "Daelim",
    "model": "VS 125",
    "category_id": 8,
    "year": "2014",
    "image": "https://images.unsplash.com/photo-1566891439633-e183f368493b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
    "rental_price": Faker::Number.between(from: 100, to: 200),
  }
]

@minibikecross.each do |mini|
  Motorcycle.create(mini)
end
