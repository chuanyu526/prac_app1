require 'spec_helper'

describe "StaticPages" do
  describe "Home pages" do
    it "should have the content 'microblog'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('microblog')
    end
 
    it "should have the right title" do
 	  visit '/static_pages/home'
 	  page.should have_selector('title', :text => "Practice app | Home")
    end

  end

  describe "Help Page" do

  	it "should have the content 'Help' " do 
  		visit '/static_pages/help'
  		page.should have_content('Help')

  	end

    it "should have the right title" do
 	  visit '/static_pages/help'
 	  page.should have_selector('title', :text => "Practice app | Help")
    end

  end 

  describe "About page" do
  	it "should have the content 'About Us' " do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

    it "should have the right title" do
 	  visit '/static_pages/about'
 	  page.should have_selector('title', :text => "Practice app | About Us")
    end


  end



end
