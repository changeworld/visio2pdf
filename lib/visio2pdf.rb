# coding: utf-8

require 'win32ole'

#
# Visio2pdf converts Visio files to PDF files.
#
module Visio2pdf
  VSDEXTS = '.vsd'
  PDFEXTS = '.pdf'
  @visio = nil
  @in_dir = nil
  @vsd_fullpath = nil
  @pdf_fullpath = nil

  def self.exec(in_dir)
    @in_dir = in_dir
    begin
      @visio = WIN32OLE.new('Visio.Application')
      @visio.alertresponse = 7
      convert
    ensure
      @visio.Quit
    end
  end

  private

  def self.convert
    files = Dir["#{@in_dir}/[^~]*{#{VSDEXTS}}"]
    files.sort.each do |file|
      get_filepath file
      output
    end
  end

  def self.get_filepath(file)
    @vsd_fullpath = File.expand_path(file)
    @pdf_fullpath = @vsd_fullpath.gsub(/\.vsd$/, PDFEXTS)
  end

  def self.output
    vsd = @visio.Documents.Open(@vsd_fullpath)
    vsd.ExportAsFixedFormat(
      FixedFormat: 1, OutputFileName: @pdf_fullpath, Intent: 0, PrintRange: 0
    )
  rescue
    puts "fail: #{@vsd_fullpath}"
  ensure
    vsd.Close
  end
end