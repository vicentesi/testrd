require 'rails_helper'

RSpec.describe "leads/show", type: :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :name => "Name",
      :last_name => "Last Name",
      :email => "Email",
      :company => "Company",
      :job_title => "Job Title",
      :phone => "Phone",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Website/)
  end
end
