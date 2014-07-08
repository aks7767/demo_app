require 'spec_helper'


describe "StaticPages" do
  describe "Home page" do
    before { visit root_path}
    subject { page }
    it { should have_content('Sample App')}
   
    it "should have the base title" do
      page.should have_selector('title', text: full_title(''))
    end
    it "should have the title 'Home'" do
      page.should_not have_selector('title', :text => " | Home")
    end
  end
  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end
  end
  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
  end
end
