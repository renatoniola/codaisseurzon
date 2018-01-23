FactoryBot.define do
  factory :checkout do
    token "MyString"
    amount 1
    total_price "9.99"
    product nil
    user nil
  end
end
