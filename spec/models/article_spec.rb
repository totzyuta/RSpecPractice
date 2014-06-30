require 'rails_helper'

describe Article do
  context "titleとbodyを指定した場合" do
    before do
      @article = Article.new(
        title: "My first blog",
        body: "My first article"
      )
    end
    it "title is set properly" do
      expect(@article.title).to eq "My first blog"
    end
    it "body is set properly" do
      expect(@article.body).to eq "My first article"
    end
  end
  context "title is NOT set" do
    before do
      @article = Article.new
    end
    it { expect(@article).to_not be_valid }
  end
  context "title is set" do
    before do
      @article = Article.new(title: "My first blog")
    end
    it { expect(@article).to be_valid }
  end
end


