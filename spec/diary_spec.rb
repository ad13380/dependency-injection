require 'diary'

describe Diary do
  describe '#index' do
  let(:entry_class) { double :entry_class }
  let(:entry) { double(title: 'not a title') }
    
  it 'returns a list of titles' do
      allow(entry_class).to receive(:new).with('a title', 'a body').and_return(entry)
      #allow(entry).to receive(:title).and_return('not a title')

      diary = Diary.new(entry_class)
      diary.add('a title', 'a body')
      expect(diary.index).to eq("not a title")
    end
  end
end