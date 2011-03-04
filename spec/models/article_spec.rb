require 'spec_helper'
describe Article do
  it "produces the name when sent to #to_s" do
    "setup"
    the_name = "The Article Name"
    article = Article.new(:name => the_name)
    
    "excersize"
    actual_string = article.to_s
    
    "verification"
    actual_string.should == the_name
    end
  end
  describe Article, "given an old and new article" do
    before do
      @old = Factory(:article, :created_at => 5.minutes.ago)
      @new = Factory(:article, :created_at => Time.now)
    end
  
    context ".most_recent" do
      subject do
        Article.most_recent
      end
    
      it "sorts all articles by most recent" do
        subject.should == [@new, @old]
      end
    end
  end
