class SequenceElement
  attr_reader :value

  def self.next_value(value)
    next_value =
      split(value).map do |substring|
        substring.length.to_s + substring[0]
      end
    next_value.join
  end

  def initialize(value = '1')
    @value = value
  end

  def to_s
    @value
  end

  def next
    SequenceElement.new(SequenceElement.next_value(@value))
  end

  private

  def self.split(value)
    value.scan(/((\d)\2*)/).map(&:first)
  end
end
