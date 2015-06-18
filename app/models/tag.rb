class Tag < ActiveRecord::Base
  validates :tag, :color, presence: true
  validates :tag, uniqueness: true

  # or

  # validates_presence_of :tag, :color
  # validates_uniqueness_of :tag

  has_and_belongs_to_many :posts

  before_create do
    self.count = 0
  end
end
