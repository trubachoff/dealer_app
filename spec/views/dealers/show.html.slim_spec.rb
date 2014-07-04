require 'rails_helper'

RSpec.describe "dealers/show", :type => :view do
  before(:each) do
    @dealer = assign(:dealer, Dealer.create!(
      :title => "Title",
      :address => "Address",
      :phone => "Phone",
      :site => "Site"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Site/)
  end
end
