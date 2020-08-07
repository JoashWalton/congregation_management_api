require 'rails_helper'

RSpec.describe "souls/show", type: :view do
  before(:each) do
    @soul = assign(:soul, Soul.create!(
      :first_name => "First Name",
      :middle_name => "Middle Name",
      :last_name => "Last Name",
      :unique_identifier => "Unique Identifier",
      :birth_date => "Birth date",
      :gender => "Gender"
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Unique Identifier/)
    expect(rendered).to match(/Birth date/)
    expect(rendered).to match(/Gender/)
  end
end
