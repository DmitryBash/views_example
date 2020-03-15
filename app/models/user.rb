class User < ApplicationRecord
  has_one :example

  # User.includes(:example) => will preload all things, what you need
end
