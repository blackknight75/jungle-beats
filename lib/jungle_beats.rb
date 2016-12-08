require_relative 'linked_list'
require_relative 'node'
class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
    @beats_to_play = []
  end

  def append(data)
    input_data = data.split
    input_data.each do |beat|
      @list.append(beat)
    end
    @beats_to_play = @list.to_string
  end

  def count
    @list.count
  end

  def play
    `say -r 500 -v Boing "#{@list.to_string}"`
  end
end
