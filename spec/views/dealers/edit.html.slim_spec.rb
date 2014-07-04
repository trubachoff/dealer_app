require 'rails_helper'

RSpec.describe "dealers/edit", :type => :view do
  before(:each) do
    @dealer = assign(:dealer, Dealer.create!(
      :title => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :site => "MyString"
    ))
  end

  it "renders the edit dealer form" do
    render

    assert_select "form[action=?][method=?]", dealer_path(@dealer), "post" do

      assert_select "input#dealer_title[name=?]", "dealer[title]"

      assert_select "input#dealer_address[name=?]", "dealer[address]"

      assert_select "input#dealer_phone[name=?]", "dealer[phone]"

      assert_select "input#dealer_site[name=?]", "dealer[site]"
    end
  end
end
