class User < ApplicationRecord

  has_one  :dialect, primary_key: 'dialect_id', foreign_key: 'id'

  include Clearance::User
  enum status: [:offline, :online, :away]

end
