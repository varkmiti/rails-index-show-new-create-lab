require 'rails_helper'

RSpec.describe "coupons/edit", type: :view do
  before(:each) do
    @coupon = assign(:coupon, Coupon.create!(
      :coupon_code => "MyString",
      :store => "MyString"
    ))
  end

  it "renders the edit coupon form" do
    render

    assert_select "form[action=?][method=?]", coupon_path(@coupon), "post" do

      assert_select "input#coupon_coupon_code[name=?]", "coupon[coupon_code]"

      assert_select "input#coupon_store[name=?]", "coupon[store]"
    end
  end
end
