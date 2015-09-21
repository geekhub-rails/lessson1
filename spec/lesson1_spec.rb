require_relative '../lesson1'

RSpec.describe Lesson1 do
  describe '#sum' do
    it { expect(subject.sum(235)).to eql(10) }
    it { expect(subject.sum('235')).to eql(10) }
    it { expect(subject.sum(:a235ds)).to eql(10) }
    it { expect(subject.sum).to eql(0) }
  end

  describe '#age' do
    it { expect(subject.age('03/05/1990')).to include('25') }
    it { expect(subject.age(nil)).to eql('Invalid Date Format') }
  end

  describe '#name' do
    before do
      allow(subject).to receive(:gets).and_return('Alex', 'Super', 'Man')
      allow(subject).to receive(:print)
    end

    it { expect(subject.name).to eql('Hello Alex Super Man!') }
  end
end
