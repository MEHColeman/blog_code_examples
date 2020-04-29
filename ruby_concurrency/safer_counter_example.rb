class SaferCounter
  attr_accessor :countup
  def initialize
    @countup = 0
    @lock = Mutex.new
  end

  def increment
    @lock.synchronize do
      temp = @countup
      sleep 0.1
      @countup = temp + 1
    end
  end
end

countup = SaferCounter.new
threads=[]

8000.times do
  threads << Thread.new { countup.increment; sleep 1 }
end
threads.map(&:join)
puts countup.countup
