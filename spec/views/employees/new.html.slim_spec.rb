require 'rails_helper'

RSpec.describe "employees/new", :type => :view do
  before(:each) do
    assign(:employee, Employee.new(
      :name => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :fired => 1,
      :encrypted_password => "MyString"
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_lastname[name=?]", "employee[lastname]"

      assert_select "input#employee_email[name=?]", "employee[email]"

      assert_select "input#employee_fired[name=?]", "employee[fired]"

      assert_select "input#employee_encrypted_password[name=?]", "employee[encrypted_password]"
    end
  end
end
