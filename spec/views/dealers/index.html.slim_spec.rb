require 'rails_helper'

RSpec.describe "dealers/index", :type => :view do
  before(:each) do
    assign(:dealers, [
      Dealer.create!(
        :title => "Title",
        :address => "Address",
        :phone => "Phone",
        :site => "Site"
      ),
      Dealer.create!(
        :title => "Title",
        :address => "Address",
        :phone => "Phone",
        :site => "Site"
      )
    ])
  end

  it "renders a list of dealers" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
  end
end
