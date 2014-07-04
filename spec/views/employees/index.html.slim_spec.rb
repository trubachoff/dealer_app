require 'rails_helper'

RSpec.describe "employees/index", :type => :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :name => "Name",
        :lastname => "Lastname",
        :email => "Email",
        :fired => 1,
        :encrypted_password => "Encrypted Password"
      ),
      Employee.create!(
        :name => "Name",
        :lastname => "Lastname",
        :email => "Email",
        :fired => 1,
        :encrypted_password => "Encrypted Password"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
  end
end
