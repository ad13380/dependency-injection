require 'note'

describe Note do
  let(:title) { "Note Title" }
  let(:body) { "This is the body of the note" }
  let(:note) { described_class.new(title,body) }

  describe '#initialize' do
    it 'is expected to respond to #new with 2 arguments' do
      expect(Note).to respond_to(:new).with(2).arguments   
    end
  end

  describe '#title' do
    it 'returns the note title' do
      expect(note.title).to eq title
    end
  end

  describe '#body' do
  it 'returns the note title' do
      expect(note.body).to eq body
    end
  end
end

describe NoteFormatter do
  let(:title) { "Note Title" }
  let(:body) { "This is the body of the note" }
  let(:formatted_note) { "Title: #{title}\n#{body}" }
  let(:note_formatter) { described_class.new }

  describe '#format' do
    it 'is expected to respond to #format with 1 argument' do
      expect(note_formatter).to respond_to(:format).with(1).argument
    end
  end

  describe '#display' do
    let(:double_note) { double('double note', title: title, body: body) }
    it 'returns a formatted note' do
      expect(note_formatter.format(Note.new(title,body))).to eq formatted_note
    end
  end 
end