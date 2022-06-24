require 'rails_helper'

RSpec.describe "coupons/index", type: :view do
  before(:each) do
    assign(:coupons, [
      Coupon.create!(
        :coupon_code => "Coupon Code",
        :store => "Store"
      ),
      Coupon.create!(
        :coupon_code => "Coupon Code",
        :store => "Store"
      )
    ])
  end

  it "renders a list of coupons" do
    render
    assert_select "tr>td", :text => "Coupon Code".to_s, :count => 2
    assert_select "tr>td", :text => "Store".to_s, :count => 2
  end
end
