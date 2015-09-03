require_relative '../spec_helper'

RSpec.describe "LeadsPages", type: :request do

  describe "leads" do
    subject { page }
    before { visit leads_path }

    it "show leads page" do
      expect(page).to have_content "All Leads"
    end

    it "create a lead" do
      click_link "New Lead"
      expect(page).to have_content "New Lead"
    end

    it "delete a lead" do
      click_link "New Lead"
      fill_in 'Name', with: "foo"
      fill_in 'Last name', with: "bar"
      fill_in 'Email', with: "test@email.com"
      fill_in 'Company', with: "co"
      fill_in 'Job title', with: "555-5555"
      fill_in 'Phone', with: "555-5555"
      fill_in 'Website', with: "site"

      click_button "Save Lead"
      click_link "Delete", match: :first
    end

    it "integrate a lead" do
      click_link "New Lead"
      fill_in 'Name', with: "foo"
      fill_in 'Last name', with: "bar"
      fill_in 'Email', with: "test@email.com"
      fill_in 'Company', with: "co"
      fill_in 'Job title', with: "555-5555"
      fill_in 'Phone', with: "555-5555"
      fill_in 'Website', with: "site"
      click_button "Save Lead"

      click_link "Integrate", match: :first
      expect(page).to have_content "Salesforce"
    end

    it "switch to home page" do
      click_link "Home"
      expect(page).to have_content "Evaluation Test Project"
    end

    it "switch to about page" do
      click_link "About"
      expect(page).to have_content "About"
    end

  end

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

    it "switch to about page" do
      click_link "About"
      expect(page).to have_content "About"
    end

    it "switch to leads page" do
      click_link "Leads"
      expect(page).to have_content "All Leads"
    end

  end

  describe "about page" do
    subject { page }
    before { visit about_path }

    it "show about" do
      expect(page).to have_content "About"
    end

    it "redirect to testrd github" do
      href = "https://github.com/vicentesi/testrd"
      expect(page).to have_selector "a[href='#{href}']", text: "RD Test App"
    end

    it "redirect to testrd_gem github" do
      href = "https://github.com/vicentesi/testrd_gem"
      expect(page).to have_selector "a[href='#{href}']", text: "RD Test Gem"
    end

    it "redirect to linkedin profile" do
      href = "https://br.linkedin.com/pub/vicente-silveira-in%C3%A1cio/25/734/588"
      expect(page).to have_selector "a[href='#{href}']", text: "Vicente Silveira Inácio"
    end

    it "switch to home page" do
      click_link "Home"
      expect(page).to have_content "Evaluation Test Project"
    end

    it "switch to leads page" do
      click_link "Leads"
      expect(page).to have_content "All Leads"
    end

  end
end
