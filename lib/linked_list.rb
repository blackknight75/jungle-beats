class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    input_node = Node.new(data)
    if @head == nil
      @head = input_node
      @current = @head
    else
      add_node_to_list(input_node)
    end
    input_node.data
  end

  def add_node_to_list(input_node)
    if @current.next_node == nil
      @current.next_node = input_node
      @current = @head
    elsif @current.next_node != nil
      @current = @current.next_node
      add_node_to_list(input_node)
    end
  end

  def prepend(data)
    input_node = Node.new(data)
    if @head == nil
      @head = input_node
      @current = input_node
    else
      input_node.next_node = @head
      @head = input_node
    end
  end

  def insert(position, input_beat)
    current = @head
    (position - 1).times do
      current = current.next_node
    end
    # create a new node
    node = Node.new(input_beat)
    # create a temporary thing for the end of the chain to hold on to
    end_of_chain = current.next_node
    current.next_node = node
    # attach new node to end of current position
    node.next_node = end_of_chain
    # reattach end of the rest of the chain
    input_beat
  end

  def count
    counter = 1
    current = @head
    until current.next_node.nil?
      current = current.next_node
      counter += 1
    end
    counter
  end

  def to_string
    beat_list = []
    current = @head
    until current.next_node.nil?
      beat_list << current.data
      current = current.next_node
    end
    beat_list << current.data
    beat_list.join(" ")
  end

  def add_beat_to_list(input_node)
  end
end
