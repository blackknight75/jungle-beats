class JungleBeat
  attr_reader :head, :beat_list, :beat, :count
  def initialize
    @head = nil
    @beat_list = []
    @current = nil
    @count = 0
  end

  def append(input_node)
    if @head == nil
      @head = input_node
      @current = @head
      @count += 1
      @beat_list << input_node.data
    else
      add_to_list(input_node)
    end
    input_node.data
  end

  def add_to_list(input_node)
    if input_node.data == @current.data
      "We already have that beat!"
    elsif @current.data == nil
      @current = input_node
      @count =+ 1
      @beat_list << input_node.data
    elsif input_node.data != @current.data
      @current.next_node = input_node
      @current = input_node
      add_to_list(input_node)
    end
  end

  def to_string
    output = ""
    @beat_list.each do |item|
      output.concat(item.to_s)
    end
    output
  end
end
