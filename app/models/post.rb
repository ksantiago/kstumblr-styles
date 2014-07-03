class Post < ActiveRecord::Base
  attr_accessible :title, :content, :title_tag, :meta_description, :meta_keywords, :slug
  validates_presence_of :title, :content

  # def to_param
  #   "#{id} #{title}".parameterize
  # end

  extend FriendlyId
  friendly_id :title, use: :slugged

end
