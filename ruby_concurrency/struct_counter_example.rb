StructCounter = Struct.new(:countup) do
  def increment
    self.countup += 1
  end
end

countup = StructCounter.new(0)
threads=[]

8000.times do
  threads << Thread.new { countup.increment; sleep 1 }
end
threads.map(&:join)
puts countup.countup
