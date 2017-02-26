class User < ApplicationRecord
  include Clearance::User
  has_one :dialect


  include Clearance::User
  enum status: [:offline, :online, :away]
end
