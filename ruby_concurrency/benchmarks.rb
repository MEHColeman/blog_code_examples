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

StructCounter = Struct.new(:countup) do
  def increment
    self.countup += 1
  end
end

require 'benchmark'

counter = Counter.new
structcounter = StructCounter.new(0)

Benchmark.bmbm do |b|
  b.report('counter') do
    1_000_000.times { counter.increment }
  end
  b.report('struct') do
    1_000_000.times { structcounter.increment }
  end
end
