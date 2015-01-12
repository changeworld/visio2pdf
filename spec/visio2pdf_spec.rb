require 'spec_helper'

describe Visio2pdf do
  it 'has a version number' do
    expect(Visio2pdf::VERSION).not_to be nil
  end

  describe '#exec' do
    it 'works' do
      Visio2pdf.exec('../visio')
      pdf_file = Dir['../visio/[^~]*.pdf']
      expect(pdf_file.length).not_to be 0
    end
  end
end
