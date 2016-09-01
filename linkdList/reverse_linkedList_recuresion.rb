class ListNode
  attr_accessor :value , :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

def reverse_linked_list(head)
  return nil if head.nil?
  return head if head.next.nil?

  return reverse(head)
end

def reverse(node)
  if node.next.nil?
    return node
  end
  temp = node.next
  node.next = nil
  result = reverse(temp)
  temp.next = node
  return result
end

head2 = ListNode.new(1)
head2.next = ListNode.new(2)
head2.next.next = ListNode.new(3)
head2.next.next.next = ListNode.new(4)

head_reverse = reverse_linked_list(head2)

while !head_reverse.nil?
  puts head_reverse.value
  head_reverse = head_reverse.next
end
