require 'rails_helper'

RSpec.describe "cars/index", :type => :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :model => "Model",
        :vin => "Vin"
      ),
      Car.create!(
        :model => "Model",
        :vin => "Vin"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Vin".to_s, :count => 2
  end
end
