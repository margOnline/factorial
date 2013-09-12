class Factorial

  def compute(n)
    n == 1 ? n : n * compute(n-1)    
  end

  def sum_digits(num)
    sum = 0
    num.to_s.chars.map {|dig| sum += dig.to_i} 
    sum
  end

end

# factorial=Factorial.new
# result =  factorial.compute(100)

# puts " sum of digits  = #{factorial.sum_digits(result)}"

describe 'Factorial' do
  let(:factorial) { Factorial.new }

 it 'should return 1 if number is 1' do
    factorial.compute(1).should eq 1
  end

it 'should be able to calculate a number\'s factorial' do
    factorial.compute(5).should eq 120
    factorial.compute(3).should eq 6
  end

it 'should be able to calculate the sum of the factorial\'s digits' do
    factorial.sum_digits(120).should eq 3
    factorial.sum_digits(24).should eq 6
  end


end

