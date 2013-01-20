require 'rubygems'
require 'sinatra'

get "/tables/:num" do |num|
  @rows = MultTable.generate(num, 12)
  haml :tables
end

class MultTable
  def self.generate(base_num, max_num)
    rows = []
    10.times {
      row = []
      4.times { row << "#{base_num} x #{rand(max_num)} = "}
      rows << row
    }
    rows
  end
end
