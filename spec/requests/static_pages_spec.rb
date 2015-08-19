require_relative '../spec_helper'
require_relative '../support/utilities'

RSpec.describe "Static Pages" do

	subject { page }

	describe "Home Page" do

		before { visit root_path }

		it { should have_title(full_title('Home')) }

	end

	describe "About Page" do

		before { visit about_path }

		it { should have_title(full_title('About')) }

	end

	describe "should get home" do
		it "should get Home" do
	    get root_path
	    assert_response :success
  	end
  end

  describe "should get about" do
		it "should get About" do
	    get about_path
	    assert_response :success
  	end
  end

  it "should have the right links on the layout" do
  	visit root_path
  	click_link "About"
  	page.should have_title(full_title('About'))
  	click_link "Home"
  	page.should have_title(full_title('Home'))
  end

end
