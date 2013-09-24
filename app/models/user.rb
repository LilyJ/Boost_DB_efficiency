class User < ActiveRecord::Base
  has_many :karma_points

  attr_accessible :first_name, :last_name, :email, :username

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  validates :username,
            :presence => true,
            :length => {:minimum => 2, :maximum => 32},
            :format => {:with => /^\w+$/},
            :uniqueness => {:case_sensitive => false}

  validates :email,
            :presence => true,
            :format => {:with => /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i},
            :uniqueness => {:case_sensitive => false}

  def self.by_karma
    User.order('karma_level DESC')
  end

  def total_karma
    self.karma_level
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.page(page_number)
    users_per_page = 50
    first_user = ((page_number - 1) * users_per_page) + 1
    last_user = (page_number * users_per_page)
    User.by_karma.limit(users_per_page).offset(first_user)
  end
end
