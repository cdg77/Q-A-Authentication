class Answer < ActiveRecord::Base
  validates :user, :presence => true
  validates :text, :presence => true

  belongs_to :question
end
