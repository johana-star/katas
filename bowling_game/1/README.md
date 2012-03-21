This is my first attempt at writing a solution for the Bowling Game kata, which is solved writing a function which calculates the score of a bowling game.

I am solving this kata using BDD, which means I first wrote a Cucumber scenario in the features directory to test my function.

I spent a lot of time defining how the frames would be defined.

I got snagged on consuming the table as the create! method appears to be provided by Rails.
```
table.hashes.each do |attributes|
  @frames.create!(attributes)
end
```