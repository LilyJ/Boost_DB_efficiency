class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  after_save :increment_user_karma

  def increment_user_karma
    user = User.find(self.user_id)
    user.karma_level += self.value
    user.save
  end

end
