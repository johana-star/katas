Feature: Computer calculates bowling game scores

	As a bowler
	I want to know my score
	So that I can determine my ranking
	
  Scenario: zero game
    Given I have rolled the following game:
		| frame	| first attempt	| second attempt	|
		| 1		| 0				| 0					|
		| 2		| 0				| 0					|
		| 3		| 0				| 0					|
		| 4		| 0				| 0					|
		| 5		| 0				| 0					|
		| 6		| 0				| 0					|
		| 7		| 0				| 0					|
		| 8		| 0				| 0					|
		| 9		| 0				| 0					|
		| 10	| 0				| 0					|
		| bonus | 0				| none				|
    Then I should score 0
	
	Scenario: perfect game
		Given I have rolled the following game:
		| frame	| first attempt	| second attempt	|
		| 1		| strike		| none				|
		| 2		| strike		| none				|
		| 3		| strike		| none				|
		| 4		| strike		| none				|
		| 5		| strike		| none				|
		| 6		| strike		| none				|
		| 7		| strike		| none				|
		| 8		| strike		| none				|
		| 9		| strike		| none				|
		| 10	| strike		| none				|
		| bonus | strike		| none				|
	Then I should score 300
	
  Scenario: example game
    Given I have rolled the following game:
		| frame	| first attempt	| second attempt	|
		| 1		| 1				| 4					|
		| 2		| 4				| 5					|
		| 3		| 6				| 4					|
		| 4		| 5				| 5					|
		| 5		| 10			| none				|
		| 6		| 0				| 1					|
		| 7		| 7				| 3					|
		| 8		| 6				| 4					|
		| 9		| 10			| none				|
		| 10	| 2				| 8					|
		| bonus | 6				| none				|
    Then I should score 133