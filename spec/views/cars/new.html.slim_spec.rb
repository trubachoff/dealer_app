require 'rails_helper'

RSpec.describe "cars/new", :type => :view do
  before(:each) do
    assign(:car, Car.new(
      :model => "MyString",
      :vin => "MyString"
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input#car_model[name=?]", "car[model]"

      assert_select "input#car_vin[name=?]", "car[vin]"
    end
  end
end
