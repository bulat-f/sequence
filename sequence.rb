require_relative 'sequence_element'

class Sequence
  def initialize(elem_value = '1', amount = 1)
    current_elem = SequenceElement.new(elem_value)
    @values = Array.new(amount) do
      current_elem.step
    end
  end

  def to_a
    @values
  end

  def to_s
    @values.join("\n")
  end
end
