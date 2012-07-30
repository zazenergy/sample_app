require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  describe "Home Page" do
    before {visit root_path}

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_content('Sample App')}
    it { should_not have_selector 'title', text: '| Home' }
  end
  
  describe "Help Page" do 
    before {visit help_path}

    it { should have_content('Help') }
    it { should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help") }
  end
  
  describe "About Page" do
    before {visit about_path}

    it { should have_content('About Us') }
    it { should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us") }
  end
  
  describe "Contact Page"do
    before {visit contact_path}
    
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Contact") }
  end
  
end