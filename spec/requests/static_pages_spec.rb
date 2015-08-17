require_relative '../spec_helper'

RSpec.describe "Static Pages" do

	describe "Home Page" do
		it "should have the content Home" do
			visit '/static_pages/home'
			page.should have_title('Evaluation Test Project for R.D. | Home')
		end
	end

	describe "About Page" do
		it "should have the content About" do
			visit '/static_pages/about'
			page.should have_title('Evaluation Test Project for R.D. | About')
		end
	end

end
