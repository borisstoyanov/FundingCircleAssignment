Feature: Prime numbers multiplication displayed in table

  Objective:
  Write a program that prints out a multiplication table of the first 10 prime numbers.
  The program must run from the command line and print to screen one table. Across the
  top and down the left side should be the 10 primes,and the body of the table should
  contain the product of multiplying these numbers.

  Scenario: Run the program with a parameter of a prime number position
    When the user runs the program with position: "3"
    Then the user should be displayed with a table containing the multiplication

  Scenario: Run the program and make sure the table is displayed
    When the user runs the program without any parameters
    Then the output should contain the multiplication




