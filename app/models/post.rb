class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags

  validates_presence_of :name, :content

  def tags_attributes=(tag)
    self.tags.build(:name => tag[:name])
  end
end
