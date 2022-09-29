class User < ApplicationRecord
  has_many :books, inverse_of: "author", dependent: :destroy
end
