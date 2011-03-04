class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  
  validates_presence_of :name, :body
  
  def to_s
      name
    end

  def self.most_recent
    Article.order("created_at desc")
  end
end
