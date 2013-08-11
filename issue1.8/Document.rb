module XML
  class Document
    def generate
      puts "Generate XML"
    end
  end
end

module PDF
  class Document
    def generate
      puts "Generate PDF"
    end
  end
end

pdf_document = PDF::Document.new
xml_document = PDF::Document.new



