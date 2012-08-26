class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :password_confirmation, :username
  has_many :plans
  
  validates_confirmation_of :password, :on => :create, :message => "Password should match confirmation"
  validates_presence_of :password, :on => :create, :on => :create, :message => "Password cannot be blank"
  validates_presence_of :email, :username, :on => :create, :message => "Sorry that esername is taken"
  validates_uniqueness_of :email, :username, :on => :create, :message => "That email is being used"
end
