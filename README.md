# Calculator

This is a simple calculator program implemented using Lex and Yacc. The idea is simple: create a program that takes as input the text of an arithmetic expression (for instance, the string `"5 + 4"`), and prints out the value of that expression (`"9"`).

There's a lot that has to happen in order to make this work: first, the program has to split the input up into its individual pieces: this is a process called lexing, so that it can take an expression `"5 + 4"` and turn it into a number (`5`), the `+` operator (addition), and another number (`4`). Each of these is described by a regular expression codified in `calculator.l`.

Then, it has to put these pieces together into a coherrent interpretation: a number plus another number is the sum of the two numbers, so that `5`, `+`, `4` is interpreted as `9`. This is described by a context-free grammar codified in `calculator.y`.

## How to run it

To run this program, you will need `lex` and `yacc` installed. These are installed by default on MacOS, and a guide for installation on Windows can be found in [this Stack Overflow answer thread](https://stackoverflow.com/questions/5456011/how-to-compile-lex-yacc-files-on-windows).

Easy version, if `make` is installed:
1. Clone the repository
2. Open the project directory in your shell
3. Run `make`
4. Run the program using `./calculator`

Slightly harder version, if `make` is not installed:
1. Clone the repository
2. Open the project directory in your shell
3. Generate the lexer, using `lex calculator.l`
4. Generate the parser, using `yacc calculator.y`
5. Compile the program, using `gcc y.tab.c -ly -ll -lm -o calculator` (feel free to use a different compiler)
6. Run the program using `./calculator`

## What's next?

If you enjoyed this session or want to see what you missed out on, try cloning the repository and reading through the code. Some possible next steps:

* Add support for the rest of the arithmetic operators
* How could you add support for parentheses? (Hint: what happens if you wrap an expression in parentheses?)
* What would you need to do to reuse the result of a previous calculation? (Hint: how do you usually keep track of a value when programming?)