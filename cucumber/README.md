# Cucumber

Provides a framework for describing tests, helping you to focus on the behaviour you want to test,
rather than the technical details, written using the 'Gherkin' syntax. In other words, **what** rather than **how**.

The structure is:

_**Features**_ -> contain _**Scenarios**_ -> contain _**steps**_

## To run these tests

These features (and the step definitions they use) are designed to introduce you to scenarios, one concept at a time.

First run the simple.feature and examine the step definitions it uses:

    cucumber features/simple.feature

Next, do the same for the parameters.feature:

    cucumber features/parameters.feature

Finally, do the same the background.feature:

    cucumber features/background.feature

## Other information

For more information on the options available: https://cucumber.io/docs/gherkin/reference/

For more information on good practices: https://github.com/discovery-digital/discgo-qa-cucumber-tests/wiki/Gherkin-Syntax
