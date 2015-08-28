class User < ActiveRecord::Base
  has_many :blabs
  validates_presence_of :uid, :handle
end
