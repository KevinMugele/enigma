class CommandLine

  attr_reader :input, :output, :message

  def initialize(argv)
    @input = argv[0]
    @output = argv[1]
    @message = File.read(input).chomp
    @enigma = Enigma.new
  end

  def write_to_file(output, new_message)
    File.write(output, new_message)
  end

  def message_to_terminal
    "Created #{output} with the key    and date "
  end




end
