=begin
  Implement a MyQueue class which implements
  a queue using 2 stacks.
=end

require_relative 'my_queue'

my_queue = MyQueue.new

5.times do
  p my_queue.enqueue(rand(10))
end

p my_queue.dequeue

p my_queue
