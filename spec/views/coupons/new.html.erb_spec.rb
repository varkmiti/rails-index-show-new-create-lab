require 'rails_helper'

RSpec.describe "coupons/new", type: :view do
  before(:each) do
    assign(:coupon, Coupon.new(
      :coupon_code => "MyString",
      :store => "MyString"
    ))
  end

  it "renders new coupon form" do
    render

    assert_select "form[action=?][method=?]", coupons_path, "post" do

      assert_select "input#coupon_coupon_code[name=?]", "coupon[coupon_code]"

      assert_select "input#coupon_store[name=?]", "coupon[store]"
    end
  end
end
