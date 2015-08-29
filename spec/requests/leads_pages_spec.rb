require_relative '../spec_helper'

RSpec.describe "LeadsPages", type: :request do

  describe "root" do
    subject { page }
    before { visit root_path }

    it "show home page" do
      expect(page).to have_content "Evaluation Test Project"
    end

    #it "creates a lead"
    it "redirect to external page" do
      click_link "Resultados Digitais"
      expect(page).to have_content "Resultados Digitais"
    end

    it "Add a new lead" do
      click_link "New Lead"
      fill_in 'Name', with: "foo"
      fill_in 'Last name', with: "bar"
      fill_in 'Email', with: "test@email.com"
      fill_in 'Company', with: "co"
      fill_in 'Job title', with: "555-5555"
      fill_in 'Phone', with: "555-5555"
      fill_in 'Website', with: "site"

      click_button "Save Lead"
      expect(page).to have_content "Lead was successfully created."
    end

    it "view leads" do
      click_link "View Leads"
      expect(page).to have_content "All Leads"
    end

  end

  describe "leads" do
    subject { page }
    before { visit leads_path }

    it "show leads page" do
      expect(page).to have_content "All Leads"
    end

    it "deletes a lead" do
      click_link "New Lead"

      fill_in 'Name', with: "foo"
      fill_in 'Last name', with: "bar"
      fill_in 'Email', with: "test@email.com"
      fill_in 'Company', with: "co"
      fill_in 'Job title', with: "555-5555"
      fill_in 'Phone', with: "555-5555"
      fill_in 'Website', with: "site"

      click_button "Save Lead"
      click_on "Delete"

      expect(flash[:alert]).not_to be nil
    end

    it "create a lead" do
      click_link "New Lead"
      expect(page).to have_content "New Lead"
    end

  end

  describe "about page" do
    subject { page }
    before { visit about_path }

    it "show about" do
      expect(page).to have_content "About"
    end
  end

end
