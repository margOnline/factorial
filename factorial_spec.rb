class Factorial

  def compute(n)
    total = 1
    if n > 1
      total = n * compute(n-1)    
    end
    total
  end

  def sum_digits(num)
    digits = num.to_s.split('').to_a.map {|dig| dig.to_i}
  end

end

describe 'Factorial' do
  let(:factorial) { Factorial.new }

 it 'should return 1 if number is 1' do
    factorial.compute(1).should eq 1
  end

it 'should return 120 if number is 5' do
    factorial.compute(5).should eq 120
    factorial.compute(4).should eq 24
  end

it 'should be able to calculate the sum of the factorial\'s digits' do
    factorial.sum_digits.should eq true
  end


end

