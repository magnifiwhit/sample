require 'spec_helper'

describe "UserPages" do
  
  subject {page}
  
  describe "signup page" do
    before {visit signup_path}
    
    it {should have_selector('h1', text: 'Sign up')}
    it {should have_selector('title', text: full_title('Sign up'))}
  end
  
  describe "profile page" do
    let(:user) {FactoryGirl.create(:user)}
    before { visit user_path(user)}
    
    it {should have_selector('h1', text: user.name)}
    it {should have_selector('title', text: user.name)}
  end
  
  describe "Signup" do
    before {visit signup_path}
    
    let(:submit) {"Create my account"}
    
    describe "with invalid info" do
      it "shouldn't create a user" do
        expect { click_buton submit}.not_to change(User, :count)
      end
    end
    
    describe "with valid info" do
      before do
        fill_in "Name",         with: "Whit Meadows"
        fill_in "Email",        with: "meadows.whitney@gmail.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation",  with: "foobar"
      end
      
      it "should create a user" do
        expect {click_button submit}.to change(User, :count).by(1)
      end
    end
  end
end
