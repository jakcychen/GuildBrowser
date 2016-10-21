Feature: Cucumberish Demo

Scenario: App launch


Scenario Outline: Revenue

Given balance is <initialBalance>
And annual interest rate is <interestRate>
When calculate interest
Then balance becomes <endBalance>

Examples:
| initialBalance | interestRate | endBalance |
| 1000.00 |  0.05 | 1050.00 |
| 2000.00 |  0.05 | 2100.00 |