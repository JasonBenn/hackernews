class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :votes, as: :voteable
  
  def points
    upvotes = self.votes.where(direction: 1)
    downvotes = self.votes.where(direction: 0)
    upvotes.count - downvotes.count
  end
end

