class SequenceElement
  attr_reader :value

  def initialize(value = '1')
    @value = value
  end

  def to_s
    @value
  end

  def next
    SequenceElement.new(next_value)
  end

  def step
    current = SequenceElement.new(@value)
    @value = next_value
    current
  end

  def self.build_substring(sub_arr)
    sub_arr[0].length.to_s + sub_arr[1]
  end

  private

  def parse
    @value.scan(/((\d)\2*)/).map do |sub_arr|
      SequenceElement.build_substring sub_arr
    end
  end

  def next_value
    parse.join
  end
end
