class Counter
  def initialize
    @count = 0
  end

  def inc
    @count +=1
    self
  end

  def dec
    @count -=1
    self
  end

  def to_s
    @count.to_s
  end
end

c = Counter.new
c.inc
c.dec
c.inc
c.inc
c.inc

puts c
# => "3"

x = Counter.new
x.inc.dec.inc.inc.inc.inc.dec

puts x
# => "3"
