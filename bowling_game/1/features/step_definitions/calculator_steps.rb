Given /^I have rolled the following game:$/ do |table|
  @frames = Hash.new
  table.hashes.each do |attributes|
    @frames.create!(attributes)
  end
end

Then /^I should score (\d+)$/ do |score|
  @score.should = score
end