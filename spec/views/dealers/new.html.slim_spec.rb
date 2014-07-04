require 'rails_helper'

RSpec.describe "dealers/new", :type => :view do
  before(:each) do
    assign(:dealer, Dealer.new(
      :title => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :site => "MyString"
    ))
  end

  it "renders new dealer form" do
    render

    assert_select "form[action=?][method=?]", dealers_path, "post" do

      assert_select "input#dealer_title[name=?]", "dealer[title]"

      assert_select "input#dealer_address[name=?]", "dealer[address]"

      assert_select "input#dealer_phone[name=?]", "dealer[phone]"

      assert_select "input#dealer_site[name=?]", "dealer[site]"
    end
  end
end
