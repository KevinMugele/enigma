class CommandLine

  attr_reader :input, :output, :message, :key, :date

  def initialize(argv)
    @input = argv[0]
    @output = argv[1]
    @key = argv[2]
    @date = argv[3]
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

  def decrypt_message
    decrypted = @enigma.decrypt(@message, @key, @date)
    write_to_file(@output, decrypted["decryption"])
    "Created '#{output}'' with the key #{decrypted["key"]} and date #{decrypted["date"]}"
  end




end
