Expressions, when evaluated, reduce to values. Every value has a type.
Types are how we group a set of values together that share something in
common.

In Haskell, you cannot
create untyped data, so except for a sprinkling of syntactic sugar for things
like numbers or functions, everything originates in a data constructor from
some definition of a type.

Data constructors are the values that inhabit the type they are defined in.
They are the values that show up in your code, at the term level instead of
the type level. By “term level”, we mean they are the values as they appear
in your code or the values that your code evaluates to.

data Bool = False | True
-- The datatype Bool is represented by the values True or False.

#Numbers typeclass called Num.

  #Num typeclass is what provides your standard (+), (-), and (*) operators
along with a few others. Any type that has an instance of Num can be used
with those functions.

  #typeclass Bounded, and they will work to tell
you the limitations of possible values for any type that has an instance of
that particular typeclass


Integral numbers : whole numbers, positive and negative.
1. Int: This type is a fixed-precision integer. By “fixed precision,” we
mean it has a range, with a maximum and a minimum, and so it
cannot be arbitrarily large or small — more about this in a moment.
2. Integer: This type is also for integers, but this one supports arbitrarily
large (or small) numbers.
Fractional : These are not integers. Fractional numbers include the
following four types:
1. Float: This is the type used for single-precision floating point numbers.
Where fixed point number representations have immutable numbers
of digits assigned for the parts of the number before and after
the decimal point, floating point can shift how many bits it uses to
represent numbers before or after the decimal point. This flexibility
does, however, mean that floating point arithmetic violates some
common assumptions and should only be used with great care. Generally,
floating point numbers should not be used at all in business
applications.
2. Double: This is a double-precision floating point number type. It has
twice as many bits with which to describe numbers as the Float type.
3. Rational: This is a fractional number that represents a ratio of two
Integers. The value 1 / 2 :: Rational will be a value carrying two
Integer values, the numerator 1 and the denominator 2, and represents
a ratio of 1 to 2. Rational is arbitrarily precise but not as efficient as
Scientific.
4. Scientific: This is a space efficient and almost-arbitrary precision
scientific number type. Scientific numbers are represented using
scientific notation.1 It stores the coefficient as an Integer and the exponent
as an Int. Since Int isn’t arbitrarily-large there is technically
a limit to the size of number you can express with Scientific but
hitting that limit is quite unlikely.


#Fractional numbers
The four common Fractional types in use in Haskell are Float, Double,
Rational, and Scientific.
