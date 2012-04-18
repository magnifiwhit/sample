require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'sample app'" do
      visit root_path
      page.should have_content('Sample App')
    end
    it "should have the correct title" do
      visit root_path
      page.should have_selector('title', :text => "Rails Tutorial Sample")
    end
  end
  
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end    
    it "should have the correct title" do
      visit help_path
      page.should have_selector('title', :text => "Rails Tutorial Sample | Help")
    end
  end
  
  describe "About Page" do
    it "should have content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end    
    it "should have the correct title" do
      visit about_path
      page.should have_selector('title', :text => "Rails Tutorial Sample | About")
    end
  end
  
  describe "Contact Page" do
    it "should have content 'Contact Us'" do
      visit contact_path
      page.should have_content('Contact Us')
    end    
    it "should have the correct title" do
      visit contact_path
      page.should have_selector('title', :text => "Rails Tutorial Sample | Contact")
    end
  end
end
