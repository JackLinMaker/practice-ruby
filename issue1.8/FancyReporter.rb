module FancyReporter
  class Document
    def initialize
      @output = String.new
    end
    
    attr_read :output
  end
end