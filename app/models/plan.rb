class Plan < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id"
  has_many :exercises
  
  attr_accessible :title, :sport
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_length_of :title, :within => 3..20, :on => :create, :message => "Cant be shorter than 3 or longer than 30"
  
end
