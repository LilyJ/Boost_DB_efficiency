require 'spec_helper'
require 'capybara/rails'

feature 'Users' do

  it 'navigates to specific pages' do
    visit root_path
    click_link '5'
    current_path.should == user_path(5)
  end

  # it "sends email to user once clicked" do
  #   visit root_path
  #   click_link 'email_90061@example.com'
  #   page.should == 'mailto:email_90061@example.com'
  # end

  it "goes to homepage once home is clicked" do
    visit user_path(500)
    click_link 'Home'
    current_path.should == root_path
  end

  it "goes to next page once Next is clicked" do
    visit user_path(300)
    click_link 'Next'
    current_path.should == user_path(301)
  end

   it "goes to previos page once Prev is clicked" do
    visit user_path(300)
    click_link 'Prev'
    current_path.should == user_path(299)
  end

end
