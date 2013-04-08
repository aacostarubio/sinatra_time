require 'stime'

describe Stime do

  before :each do
   @a = Stime.new
  end

 it 'should return the strftime code if the user inputs the abbreviation of the month' do
  @a.date_format("Oct 14 1992").should == "time.strftime" + "('%b" + " %-d" + " %Y')"
 end

 it 'should return the strftime code if the user inputs the months complete word' do
  @a.date_format("October 14 1992").should == "time.strftime" + "('%B" + " %-d" + " %Y')"
 end

 it 'should return the strftime code if the user inputs the months in lowercase' do
  @a.date_format("october 14 1992").should == "time.strftime" + "('%B" + " %-d" + " %Y')"
 end

 it 'should return a different strftime for when the year is first' do
  @a.date_format("1992 14 10").should  == "time.strftime" + "('%Y " + "%-d" + " %-m')"
 end

 it 'should return strftime code for when the month and year are less than 12' do
  @a.date_format("1992 10 11").should == "time.strftime" + "('%Y " + "%-m" + " %-d')"
 end

end
