class LinkedList
  attr_reader :head
  def initialize
    @head = nil
    @return_value = false
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
    node = Node.new(input_beat)
    end_of_chain = current.next_node
    current.next_node = node
    node.next_node = end_of_chain
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

  def pop
    @current = @head
    poped_beat = []
    until @current.next_node.next_node == nil
      @current = @current.next_node
    end
      poped_beat << @current.next_node.data
      @current.next_node = nil
      poped_beat[0]
  end

  def include?(incoming_data)
    @return_value = false
    current_list = self.to_string.split
      current_list.each do |beat|
        if beat == incoming_data
          @return_value = true
        elsif beat != incoming_data
        end
      end
    @return_value
  end

  def find(index, chain)
    current_list = self.to_string.split
    if chain == 1
    found_beats = current_list[index]
    else
    found_beats = current_list[index..(chain + 1)].join(", ")
    end
  end
end
