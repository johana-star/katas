Given /^I have rolled the following game:$/ do |table|
  @score = calculate_ten_frames(table.raw)
end

Then /^I should score (\d+)$/ do |score|
  @score.should == score.to_i
end

def calculate_ten_frames(table)
  score, last_frame, second_to_last_frame = 0, 0, 0
  
  (1..11).each do |num|
    if table[num][1] == "strike"
      score += (10 + last_frame + second_to_last_frame) 
      second_to_last_frame = last_frame
      last_frame = 10
    else
      score += table[num][1].to_i 
    end
    unless table[num][2] == "none" || num == 11
      if table[num][2].to_i + table[num][1].to_i == 10 #spare
        score += (table[num][2].to_i + last_frame)
        second_to_last_frame = last_frame
        last_frame = 10
      else
        score += table[num][2].to_i
        second_to_last_frame = last_frame
        last_frame = table[num][2].to_i + table[num][1].to_i
      end
    end
  end
  
  return score
end