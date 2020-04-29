4.times { |i|
  Process.fork {
    puts "Process.pid: #{Process.pid} Num: #{i}"
  }
  puts "Process.pid: #{Process.pid} Num: #{i}"
}
