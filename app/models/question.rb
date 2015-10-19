class Question <ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true

  has_many :answers
end
