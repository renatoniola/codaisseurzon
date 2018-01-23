FactoryBot.define do
  factory :photo do
   image         { File.open(File.join(Rails.root, '/spec/support/uploads/nokia.jpg')) }
   product        { build(:product) }
 end
end
