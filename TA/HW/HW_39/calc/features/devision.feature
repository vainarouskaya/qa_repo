Feature: Devision

  Scenario Outline: Division two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

Examples:

Positive Test cases with excepted results for Division Functionality:

      | input        | output |
      | 7/15         | 0.467  |
      | 175/348      | 0.503  |
      | 4/41         | 0.098  |
      | 1243/25432   | 0.049  |
      | 769/76       | 10.118 |
      | 21/567       | 0.037  |
      | 2/997        | 0.002  |
      | 234/943      | 0.248  |
      | 100/2346     | 0.043  |
      | 5.2/77.12    | 0.067  |

Examples:
 
Error Handling Test Cases with excepted results for Division Functionality:

      | input        | output |
      | 7/15         | 55     |
      | 215/48956    | 4      |
      | 124/987      | 14568  |