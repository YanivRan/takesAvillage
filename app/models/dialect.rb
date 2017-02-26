class Dialect < ActiveRecord::Base
	belongs_to :users, foreign_key: 'dialect_id'
end