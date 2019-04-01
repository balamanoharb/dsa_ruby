module Containers
  module ArrayBased

    class QueueError < StandardError
    end

    class Queue

      def initialize(capacity)
        @store = []
        @capacity = capacity
      end

      def full?
        store.size == capacity
      end

      def empty?
        store.empty?
      end

      def enqueue(element)
        raise QueueError, "Queue capacity full" if full?
        store.push element
      end

      def dequeue(element)
        store.shift
      end

      def front
        store.first
      end

      def rear
        store.last
      end
       
      private
      def store
        @store
      end

      def capacity
        @capacity
      end

    end

  end
end