class Article < ActiveRecord::Base
  validates_presence_of :name, :body => true
  
  def to_s
    name
  end
end
