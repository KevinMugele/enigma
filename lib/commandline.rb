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

  def encrypt_message
    encrypted = @enigma.encrypt(@message)
    write_to_file(@output, encrypted["encryption"])
    "Created '#{output}'' with the key #{encrypted["key"]} and date #{encrypted["date"]}"
  end




end
