require 'rails_helper'

RSpec.describe "employees/edit", :type => :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :fired => 1,
      :encrypted_password => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_lastname[name=?]", "employee[lastname]"

      assert_select "input#employee_email[name=?]", "employee[email]"

      assert_select "input#employee_fired[name=?]", "employee[fired]"

      assert_select "input#employee_encrypted_password[name=?]", "employee[encrypted_password]"
    end
  end
end
