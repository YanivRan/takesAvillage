class User < ApplicationRecord
  include Clearance::User


  include Clearance::User
  enum status: [:offline, :online, :away]
end
