class House
  DATA =
    [ "the horse and the hound and the horn that belonged to",
      "the farmer sowing his corn that kept",
      "the rooster that crowed in the morn that woke",
      "the priest all shaven and shorn that married",
      "the man all tattered and torn that kissed",
      "the maiden all forlorn that milked",
      "the cow with the crumpled horn that tossed",
      "the dog that worried",
      "the cat that killed",
      "the rat that ate",
      "the malt that lay in",
      "the house that Jack built"]
  attr_reader :data, :prefix

  def initialize(orderer: UnchangedOrderer.new, prefixer: UnchangedPrefixer.new)
    @data = orderer.order(DATA)
    @prefix = prefixer.prefix
  end

  def recite
    1.upto(12).collect {|i| line(i)}.join("\n")
  end

  def phrase(num)
    data.last(num).join(" ")
  end

  def line(num)
    "#{prefix} #{phrase(num)}.\n"
  end
end

class UnchangedPrefixer
  def prefix
    "This is"
  end
end

class PiratePrefixer
  def prefix
    "Thar be"
  end
end

class UnchangedOrderer
  def order(data)
    data
  end
end

class RandomOrderer
  def order(data)
    data.shuffle
  end
end

class SemiRandomOrderer
  def order(data)
    data.first(data.length-1).shuffle.append(data.last)
  end
end

puts House.new(orderer: SemiRandomOrderer.new, prefixer: PiratePrefixer.new).line(12)