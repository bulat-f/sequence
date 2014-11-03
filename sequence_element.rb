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

  def step!
    current = SequenceElement.new(@value)
    @value = next_value
    current
  end

  def parse
    @value.scan(/((\d)\2*)/).map do |substring|
      substring[0].length.to_s + substring[1]
    end
  end

  def next_value
    parse.join
  end
end
