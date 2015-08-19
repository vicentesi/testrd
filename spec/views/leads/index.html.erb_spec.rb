require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :name => "Name",
        :last_name => "Last Name",
        :email => "Email",
        :company => "Company",
        :job_title => "Job Title",
        :phone => "Phone",
        :website => "Website"
      ),
      Lead.create!(
        :name => "Name",
        :last_name => "Last Name",
        :email => "Email",
        :company => "Company",
        :job_title => "Job Title",
        :phone => "Phone",
        :website => "Website"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
