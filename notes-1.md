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

Types are a way of categorizing values.

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
#String
1. A String is a sequence of characters. In Haskell, String is represented
by a linked-list of Char values, aka [Char].
2. A type or datatype is a classification of values or data. Types in
Haskell determine what values are members of it or inhabit it. Unlike
in other languages, datatypes in Haskell by default do not delimit the
operations that can be performed on that data.
3. Concatenation is the joining together of sequences of values. Often in
Haskell this is meant with respect to the [] or “List” datatype, which
also applies to String which is [Char]. The concatenation function
in Haskell is (++) which has type [a] -> [a] -> [a]. For example:
Prelude> "tacos" ++ " " ++ "rock"
"tacos rock"
4. Scope is where a variable referred to by name is valid. Another word
used with the same meaning are visibility, because if a variable isn’t
visible it’s not in scope.
5. Local bindings are bindings local to particular expression. The primary
delineation here from global bindings is that local bindings cannot be
imported by other programs or modules.
6. Global or top level bindings in Haskell mean bindings visible to all
code within a module and, if made available, can be imported by other
modules or programs. Global bindings in the sense that a variable is
unconditionally visible throughout an entire program do not exist in
Haskell.
7. Data structures are a way of organizing data so that the data can be
accessed conveniently or efficiently.
