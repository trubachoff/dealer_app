require 'rails_helper'

RSpec.describe "customers/index", :type => :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :name => "Name",
        :lastname => "Lastname",
        :email => "Email",
        :phone => "Phone",
        :phone_code => "Phone Code"
      ),
      Customer.create!(
        :name => "Name",
        :lastname => "Lastname",
        :email => "Email",
        :phone => "Phone",
        :phone_code => "Phone Code"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Code".to_s, :count => 2
  end
end
