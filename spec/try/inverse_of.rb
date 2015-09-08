require "spec_helper"

describe :try do
  let(:user) {
    User.create! name: :cao
  }

  let(:shop1) {
    Shop.create! title: 'shop1'
  }

  it 'inverse_of: user side op.' do
    user.followed_shops << shop1
    expect(shop1.followers).to include user
    expect(user.followed_shops).to include shop1

    user.followed_shops.delete shop1
    expect(shop1.follower_ids).to_not include user.id
    expect(user.followed_shop_ids).to_not include shop1.id
  end

  it 'inverse_of: shop side op.' do
    shop1.followers << user
    expect(shop1.followers).to include user
    expect(user.followed_shops).to include shop1
  end
end
