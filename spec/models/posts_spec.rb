require 'spec_helper'


RSpec.describe Post, :type => :model do 
  it "instantiates a post object with mass assignment" do 
    @summer = {name: "Summer", content: "It's hot."}
    summer = Post.new(@summer)
    expect(summer.name).to eq(@summer[:name])
    expect(summer.content).to eq(@summer[:content])
  end

  it "persists an object to the database" do 
    @summer = {name: "Summer", content: "It's hot."}
    summer = Post.new(@summer)    
    expect(summer.save).to eq(true)
  end

  it "has a #tags_attributes=() method" do 
    @summer = {name: "Summer", content: "It's hot.", tags_attributes: {name: "copacetic"}}
    summer = Post.new(@summer)       
  end
end