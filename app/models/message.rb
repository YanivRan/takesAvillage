class Message < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :body

  def translate 
  	DegraeveHelper.call_api_method(user.dialect, body)
  end 

end