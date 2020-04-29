class IOCounter
  attr_accessor :countup
  def initialize
    @countup = 0
    @lock = Mutex.new
  end

  def increment
    sleep 0.1
    @lock.synchronize do
      temp = @countup
      sleep 0.001
      @countup = temp + 1
    end
  end
end

countup = IOCounter.new
threads=[]

8000.times do
  threads << Thread.new { countup.increment; sleep 1 }
end
threads.map(&:join)
puts countup.countup
