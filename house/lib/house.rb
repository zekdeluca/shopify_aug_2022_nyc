class House
  def line(number)
    case number
    when 11
      "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 12
      "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    else
      "This is #{phrase(number)}the house that Jack built.\n"
    end
  end

  def phrase(number)
      ["the rooster that crowed in the morn that woke ", "the priest all shaven and shorn that married ", "the man all tattered and torn that kissed ", "the maiden all forlorn that milked ", "the cow with the crumpled horn that tossed ", "the dog that worried ", "the cat that killed ", "the rat that ate ", "the malt that lay in ", ""].last(number).join("")
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end