require_relative 'sequence_element'

class Sequence
  def initialize(elem_value = '1', amount = 1)
    @values = Array.new(amount) do
      elem = SequenceElement.new(elem_value)
      elem_value = SequenceElement.next_value(elem_value)
      elem
    end
  end

  def to_a
    @values
  end

  def to_s
    @values.join("\n")
  end
end
