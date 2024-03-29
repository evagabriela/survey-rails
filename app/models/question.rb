class Question < ActiveRecord::Base
  attr_accessible :users, :answers
  
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers

end
