require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'sample app'" do
      visit '/pages/home'
      page.should have_content('Sample App')
    end
    it "should have the correct title" do
      visit '/pages/home'
      page.should have_selector('title', :text => "Rails Tutorial Sample | Home")
    end
  end
  
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/pages/help'
      page.should have_content('Help')
    end    
    it "should have the correct title" do
      visit '/pages/help'
      page.should have_selector('title', :text => "Rails Tutorial Sample | Help")
    end
  end
  
  describe "About Page" do
    it "should have content 'About Us'" do
      visit '/pages/about'
      page.should have_content('About Us')
    end    
    it "should have the correct title" do
      visit '/pages/about'
      page.should have_selector('title', :text => "Rails Tutorial Sample | About")
    end
  end
end
