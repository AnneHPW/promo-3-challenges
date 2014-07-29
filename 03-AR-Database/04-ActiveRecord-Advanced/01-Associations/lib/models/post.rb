class Post < ActiveRecord::Base
  belongs_to :user
  #TODO: add association to the user model
end
