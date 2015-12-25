declaration of
a typeclass defines how a set of types are consumed or used in computations.
This tension is related to the expression problem which is about defining
code in terms of how data is created or processed. As Philip Wadler put
it, “The goal is to define a datatype by cases, where one can add new cases
to the datatype and new functions over the datatype, without recompiling
existing code, and while retaining static type safety (e.g., no casts).”1

typeclasses allow us to generalize over a set of types in order to
define and execute a standard set of features for those types. For example

all the numeric literals and their various
types implement a typeclass called Num, which defines a standard set of
operators that can be used with any type of numbers.



