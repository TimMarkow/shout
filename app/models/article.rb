class Article < ActiveRecord::Base
  has_many :comments
  
  validates_presence_of :name, :body
  
  
  
  def to_s
    name
  end
end
