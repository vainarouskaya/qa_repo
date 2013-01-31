Feature: Multiplication

  Scenario Outline: Multiplication two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

Examples:

 Positive Test cases with excepted results for Multiplication Functionality:

      | input        | output  |
      | 7*15         | 105     |
      | 175*348      | 60900   |
      | 4*41         | 164     |
      | 1243*25432   | 0.049   |
      | 769*76       | 58444   |
      | 21*567       | 11907   |
      | 2*997        | 1994    |
      | 234*943      | 220662  |
      | 100*2346     | 234600  |
      | 5.2*77.12    | 401.024 |

Examples:

Error Handling Test Cases with excepted results for Multiplication Functionality:

      | input        | output |
      | 7*15         | 55     |
      | 215*48956    | 4      |
      | 124*987      | 14568  |
