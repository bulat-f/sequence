class SequenceElement
  attr_reader :value

  def initialize(value = "1")
    @value = value
  end

  def to_s
    @value
  end

  def next
    next_elem = ""
    current_char = @value[0]
    counter = 0;
    (@value + " ").split("").each do |char|
      if char == current_char
        counter += 1
      else
        next_elem += counter.to_s + current_char
        current_char = char
        counter = 1
      end
    end
    SequenceElement.new(next_elem)
  end
end

class Sequence
  def initialize(first_elem_value = "1", amount = 1)
    @values = Array.new
    current_elem = SequenceElement.new(first_elem_value)
    amount.times do |i|
      @values.push(current_elem)
      current_elem = current_elem.next
    end
  end

  def to_a
    @values
  end

  def to_s
    result = ""
    @values.each do |elem|
      result += elem.to_s + "\n"
    end
    result
  end
end
