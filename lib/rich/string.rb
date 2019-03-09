# String enhancements without monkey-patching
class Rich::String
  def initialize(string)
    @string = string.to_s
  end

  def contains_letter?
    !!(string =~ /[a-z]/i)
  end

  private

  attr_reader :string
end
