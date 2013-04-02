require 'stime'

describe Stime do

 it 'should return true if the first letter is from any the months' do
  @a = Stime.new
  @a.date_format("Mar 14 1992").should == "time.strftime" + "(%b" + " %-d" + " %Y)" 
 end

end
