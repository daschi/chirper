class User < ActiveRecord::Base
  has_many :chirps
end

# user = User.find(1)
# user.chirps
# => shows all of user 1's chirps
