Feature: computer sums ten frames

  As a bowler
  I want to know my score
  So that I can determine my ranking

  Scenario: perfect game
    Given I have rolled the following game:
		| frame	| first attempt	| second attempt	|
		| 1		| 10			| none				|
		| 2		| 10			| none				|
		| 3		| 10			| none				|
		| 4		| 10			| none				|
		| 5		| 10			| none				|
		| 6		| 10			| none				|
		| 7		| 10			| none				|
		| 8		| 10			| none				|
		| 9		| 10			| none				|
		| 10	| 10			| none				|
		| bonus | none			| none				|
    Then I should score 300

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