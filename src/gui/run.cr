require "./settings"

{% if flag?(:linux) %}
  require "process"

  def run_app(title : String, width : Int32, height : Int32)
    puts "http://#{IP}:#{PORT}/#{ROOT}"
    sleep(1)

    # Arguments array
    args = [
      "-p", "http://#{IP}:#{PORT}/#{ROOT}",
      "-t", title,
      "-w", width.to_s,
      "-h", height.to_s,
    ]

    # Start the external process
    process = Process.run("zid", args)

    puts "Press Enter to close..."
    gets
  end
{% elsif flag?(:darwin) %}
  require "process"

  def run_app(title : String, width : Int32, height : Int32)
    puts "http://#{IP}:#{PORT}/#{ROOT}"
    sleep(1)

    # Arguments array
    args = [
      "-p", "http://#{IP}:#{PORT}/#{ROOT}",
      "-t", title,
      "-w", width.to_s,
      "-h", height.to_s,
    ]

    # Start the external process
    process = Process.run("zid", args)

    puts "Press Enter to close..."
    gets
  end
{% elsif flag?(:win32) %}
  #
  # Not implemented yet, lmao
  #
{% end %}
