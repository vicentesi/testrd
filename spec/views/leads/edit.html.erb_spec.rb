require 'rails_helper'

RSpec.describe "leads/edit", type: :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :company => "MyString",
      :job_title => "MyString",
      :phone => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit lead form" do
    render

    assert_select "form[action=?][method=?]", lead_path(@lead), "post" do

      assert_select "input#lead_name[name=?]", "lead[name]"

      assert_select "input#lead_last_name[name=?]", "lead[last_name]"

      assert_select "input#lead_email[name=?]", "lead[email]"

      assert_select "input#lead_company[name=?]", "lead[company]"

      assert_select "input#lead_job_title[name=?]", "lead[job_title]"

      assert_select "input#lead_phone[name=?]", "lead[phone]"

      assert_select "input#lead_website[name=?]", "lead[website]"
    end
  end
end
