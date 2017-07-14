require 'rails_helper'

describe Order do
  it { should have_many :order_items }
  it { should belong_to :user }

  # it "should accept calc_total before save" do
  #
  # end
end
