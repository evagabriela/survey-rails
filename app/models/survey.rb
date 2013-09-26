class Survey < ActiveRecord::Base
	attr_accessible :title

  has_many :questions, dependent: :destroy
  # accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank?} # The reject part help us to remove the content attribute if it is blank (a is a hash of attributes)

end

