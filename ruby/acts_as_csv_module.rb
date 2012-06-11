class CsvRow
 attr_accessor :headers, :row

 def initialize(row, headers=[])
  @headers = headers
  @row = row
 end

 def method_missing name, *args
  row_header = name.to_s
  @row[@headers.index(row_header)]  
 end
end


module ActsAsCsv
 def self.included(base)
  base.extend ClassMethods
 end
 
 module ClassMethods
  def acts_as_csv
   include InstanceMethods
  end
 end

 module InstanceMethods
  def read
   file = File.new(self.class.to_s.downcase + '.txt')
   @headers = file.gets.chomp.split(', ')
 
   file.each do |row|
    @csv_contents << row.chomp.split(', ')
   end
 end
 
 def each(&block)
  @csv_contents.each do |line| 
   row = CsvRow.new(line, @headers)
   block.call(row)
  end
 end
  
 attr_accessor :headers, :csv_contents

 def initialize
  @csv_contents = []
  read
 end
end
end

class RubyCsv 
 include ActsAsCsv 
 acts_as_csv
end

m = RubyCsv.new
m.each {|row| puts row.two}
