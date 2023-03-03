require "pry"
require_relative "../config/environment"

product = Product.first
product_2 = Product.find(2)

user = User.first
user_2 = User.find(2)

binding"pry"