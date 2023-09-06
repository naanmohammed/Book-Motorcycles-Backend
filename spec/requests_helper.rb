require 'json'

def signup
  post api_v1_signup_path, params: {
    user: {
      name: 'Naan Mohammed',
      username: 'naan',
      email: 'naan@gmail.com',
      password: '123456',
      admin: false
    }
  }
  @categories = Category.all
  res = JSON.parse response.body
  res['jwt']
end

def create_motorcycle
  post api_v1_add_motorcycle_path, params: {
    motorcycle: {
      image: 'moto.png',
      category_id: 1,
      rental_price: 500,
      year: 2008,
      brand: 'Jeep',
      model: 'Classic',
      reserved: false,
      picture: 'moto.png'
    }
  }
  response.body
end

def login
  signup
  post api_v1_login_path, params: {
    user: {
      username: 'naan'
    }
  }
end

def login_incorrect
  signup
  post api_v1_login_path, params: {
    user: {
      username: 'ahmed'
    }
  }
end

def current_path
  request.env['PATH_INFO']
end
