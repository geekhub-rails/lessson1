require_relative '../my_array'

RSpec.describe MyArray do
  let(:array) { MyArray.new((1..10).to_a.shuffle) }
  let(:arr) { MyArray.new([1, 3, 2]) }

  it { expect(array.size).to eql(10) }
  it { expect(arr.reverse).to eql([2, 3, 1]) }
  it { expect(array.max).to eql(10) }
  it { expect(array.min).to eql(1) }
  it { expect(arr.asc).to eql([1, 2, 3]) }
  it { expect(arr.desc).to eql([3, 2, 1]) }
  it { expect(arr.odd).to eql([1, 3]) }
  it { expect(arr.multiple_to_three).to eql([3]) }
  it { expect(MyArray.new([1, 1]).uniq).to eql([1]) }
  it { expect(arr.devide_on_ten).to eql([0.1, 0.3, 0.2]) }
  it { expect(arr.chars).to eql([:a, :c, :b]) }
  it { expect(arr.switch).to eql([3, 1, 2]) }
  it { expect(arr.before_min).to eql([]) }
  it { expect(arr.three_smallest).to eql([1, 2, 3]) }
end
