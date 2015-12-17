Operators are functions which can be used in infix style.

Reminder: use spaces not tabs to indent your source code

All declarations in the module must start at the same column. The column that all declarations
within a module must start in is determined by the first declaration in the
module. 

Haskell uses a non-strict evaluation (sometimes called
“lazy evaluation”) strategy which defers evaluation of terms until they’re
forced by other terms referring to them

Values are expressions, but cannot be reduced further. Values are a terminal
point of reduction

We can use let and where to introduce names for expressions.

Scope is the area of source code where a binding of a variable
applies.

If you like, a way to understand ($) in words is: “evaluate everything to
the right of me first.”


1. An argument (also, parameter) is an input to a function. Where we
have the function f x = x + 2 which takes an argument and returns
that value added to 2, x is the argument or parameter to our function.
2. An expression is a combination of symbols that conforms to syntactic
rules and can be evaluated to some result. In Haskell, an expression is
a well-structured combination of constants, variables, and functions.
While irreducible constants are technically expressions, we usually
refer to those as “values”, so we usually mean “reducible expression”
when we use this term.
3. A redex is a reducible expression.
4. A value is an expression that cannot be reduced or evaluated any
further. 2 * 2 is an expression, but not a value, whereas what it
evaluates to, 4, is a value.
5. A function is a mathematical object whose capabilities are limited to
being applied to an argument and returning a result. Functions can
be described as a list of ordered pairs of their inputs and the resulting
outputs, like a mapping. Given the function f x = x + 2 applied to
the argument 2, we would have the ordered pair (2, 4) of its input
and output.
6. Infix notation is the style used in arithmetic and logic. Infix means
the the operator is placed between the operands or arguments. An
example would be the plus sign in an expression like 2 + 2.
7. Operators are functions that are infix by default. In Haskell, operators
must use symbols and not alphanumeric characters.
8. Syntactic sugar is syntax within a programming language designed to
make expressions easier to write or read.
