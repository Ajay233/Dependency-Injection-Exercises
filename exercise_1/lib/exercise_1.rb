#Amend the following classes to be testable in isolation, then write the tests for them.
#You will know you've succeeded when you can delete the 'format' method on NoteFormatter and your 'Note' tests still pass.


class Note

  attr_reader :title, :body

  def initialize(title, body, new_object = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = new_object
  end

  def display
    @formatter.format(self)
  end

end

class NoteFormatter

  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
