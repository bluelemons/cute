require_relative "cute/version"

module Cute
  def self.run files, options
    files.each do |file|
      load file
    end
  end
end

undef test

def test name
  yield
end

def assert value
  if value
    print '.'
  else
    raise "it failed"
  end
end
