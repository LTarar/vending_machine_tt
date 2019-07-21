# Vending Machine

## Requirements
- The machine should take an initial load of products and change. (denominations - 1p, 2p, 5p, 10p, 20p, 50p, £1, £2)
- Return the correct product, once the item has been selected and the appropriate amount of money is inserted.
- Return change, if too much money is provided.
- Ask for more money, if insufficient funds have been inserted.
- Be able to reload either product or change at a later point.
- The machine should keep track of the products and change that it contains.

## Project setup
- go to your terminal
- git clone 'https://github.com/WardahTarar/vending_machine_tt'
- cd vending_machine_tt
- run 'bundle'
- run 'ruby app.rb'

## How to test?
- run 'rspec'

## Tech/framework used
- Ruby
- Rspec
- SimpleCov
- Rubocop

## Tests
Offers multiple tests to fulfil requirements.

## Motivation
The motivation behind this program was to:
- Write idiomatic ruby code
- Test-drive the code
- Good OO design of classes and methods
- The simplicity of the solution

## Approach & Things to improve
Started by modeling out the classes that the vending machine would need using CRC cards and flow charts. The approach was to Test-Drive my entire code in Ruby. Installed SimpleCov to keep track of test coverage (97%) and added Rubocop linter, along with rspec. There was to be a VendingMachine class that handles the interaction. Added Product and Coin class and used mocks and doubles to test the dependencies in Stock and Change class. My whole focus while doing the challenge was to follow a good process and the Single Responsibility Principle to reduce dependencies in classes. My initial approach regarding user interaction was through IRB but then I changed it to running the app.rb file directly from the command line, where the customer could look at the menu, choose the product, pay for it by inserting coins and get the correct product and change. If I were to do it again, I would have focused on completing all the user interface features first and then DRYing out and refactoring the code to extract classes and methods.

## Author
Lia Tarar