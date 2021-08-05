class CommandLine

  attr_reader :input, :output, :message

  def initialize(input, output)
    @input = input
    @output = output
    @message = File.read(input)
  end

end
