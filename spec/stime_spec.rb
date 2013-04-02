require 'stime'

describe Stime do

 it 'should return the strftime code if the user inputs the abbreviation of the month' do
  @a = Stime.new
  @a.date_format("Oct 14 1992").should == "time.strftime" + "(%b" + " %-d" + " %Y)" 
 end

 it 'should return the strftime code if the user inputs the months complete word' do
  @a = Stime.new
  @a.date_format("October 14 1992").should == "time.strftime" + "(%B" + " %-d" + " %Y)"
 end

end
