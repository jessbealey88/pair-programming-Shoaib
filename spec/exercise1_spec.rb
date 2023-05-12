require 'exercise1'

RSpec.describe "exercise1" do
  it "returns a name" do
    actual = say_hello("Jessica")
    expect(actual).to eq "hello Jessica"
  end
end