require 'exercise_1'
p "heheheh"

class MyMock
  def initialize(a, b)
  end

  def title
    "a note"
  end

  def body
    "body"
  end
end

class MockNoteFormatter
 def format(note)
   "Title: a note\nbody"
 end
end


describe Note do
  describe '#display' do
    it 'outputs a note' do
      note = Note.new("a note", "body", MockNoteFormatter.new)
      expect(note.display).to eq "Title: a note\nbody"
    end
  end
end

describe NoteFormatter do
  describe '#format' do
    it 'outputs a title with the note title followed by the body' do
      # note_double = MyMock.new("a note", "body")

      # note_double = double("Mock note")
      # allow(note_double).to receive(:title) {"a note"}
      # allow(note_double).to receive(:body) {"body"}

      note_double = double("mock note", :title => "a note", :body => "body")
      formatter = NoteFormatter.new
      expect(
        formatter.format(note_double)
      ).to eq "Title: a note\nbody"
    end
  end
end
