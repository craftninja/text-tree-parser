require 'spec_helper'
require_relative '../../lib/text_tree_parser.rb'

describe TextTreeParser do

  before do
    @data_tree = <<TEXTTREE
Izaiah Deckow
  Joel Corkery
    Della Schuppe
    Lurline Ankunding
  Aaliyah Wolff
    Elisa Adams
Eulalia Bode
  Claude McCullough
    Lowell Hettinger
TEXTTREE
  end

  it 'returns a hash of employees and direct supervisors' do
    text_tree_parser = TextTreeParser.new(@data_tree)
    actual = text_tree_parser.employees_supervisors
    expected = {
      "Izaiah Deckow" => nil,
      "Joel Corkery" => "Izaiah Deckow",
      "Della Schuppe" => "Joel Corkery",
      "Lurline Ankunding" => "Joel Corkery",
      "Aaliyah Wolff" => "Izaiah Deckow",
      "Elisa Adams" => "Aaliyah Wolff",
      "Eulalia Bode" => nil,
      "Claude McCullough" => "Eulalia Bode",
      "Lowell Hettinger" => "Claude McCullough",
    }
    expect(actual).to eq(expected)
  end

end
