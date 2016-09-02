# Write code to remove duplicates from an unsorted linked list.
# a temporary buffer is not allowed

class ListNode
  attr_accessor :next, :value
  def initialize(value)
    @next = nil
    @value = value
  end
end


def remove_duplicates(head)
  return nil if head.nil?
  return head if head.next.nil?

  current = head
  while !current.nil?
    runner = current.next
    prev = current
    while !runner.nil?
      if runner.value == current.value
        prev.next = runner.next
        if prev.nil?
          runner = nil
        else
          runner = prev.next
        end
      else
        runner = runner.next
        prev = prev.next
      end
    end
    current = current.next
  end
  while !head.nil?
    puts head.value
    head = head.next
  end
end

head = ListNode.new(5)
head.next = ListNode.new(4)
head.next.next = ListNode.new(5)
head.next.next.next = ListNode.new(4)
head.next.next.next.next = ListNode.new(3)

head2 = ListNode.new(5)
head2.next = ListNode.new(4)
head2.next.next = ListNode.new(5)
head2.next.next.next = ListNode.new(4)


puts remove_duplicates(head2)
