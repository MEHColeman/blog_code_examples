class Counter
  def initialize
    @countup = 0
  end

  def increment
    @countup += 1
  end

  def countup
    @countup
  end
end

countup = Counter.new
threads=[]

8000.times do
  threads << Thread.new { countup.increment; sleep 1 }
end
threads.map(&:join)
puts countup.countup
