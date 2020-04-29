class UnsafeCounter
  attr_accessor :countup
  def initialize
    @countup = 0
  end

  def increment
    temp = @countup
    sleep 0.1
    @countup = temp + 1
  end
end

countup = UnsafeCounter.new
threads=[]

8000.times do
  threads << Thread.new { countup.increment; sleep 1 }
end
threads.map(&:join)
puts countup.countup
