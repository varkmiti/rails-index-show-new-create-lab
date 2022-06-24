require 'rails_helper'

RSpec.describe "coupons/show", type: :view do
  before(:each) do
    @coupon = assign(:coupon, Coupon.create!(
      :coupon_code => "Coupon Code",
      :store => "Store"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Coupon Code/)
    expect(rendered).to match(/Store/)
  end
end
