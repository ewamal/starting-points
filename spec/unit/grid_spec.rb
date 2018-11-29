require 'spec_helper'

describe "Environment" do
  it "should be empty if there is no grid"do
    grid = Grid.new([
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
      ])
    environment = Environment.new(grid)

    expect(environment).to eq(environment.empty?)
  end
end
