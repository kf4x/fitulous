class Exercise < ActiveRecord::Base
  belongs_to :plan, :foreign_key => "plan_id"
  attr_accessible :name, :worked, :plan_id
end
