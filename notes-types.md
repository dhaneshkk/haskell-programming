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

Polymorphic type variables give us the ability to implement expressions
that can accept arguments and return results of different types without
having to write variations on the same expression for each type.

type signatures may have
"three" kinds of types: "concrete", "constrained polymorphic", or "parametrically
polymorphic".

If a type is a set of possible values, then a type variable represents a set of
possible types. When there is no typeclass constraint, the set of possible
types a variable could represent is effectively unlimited. Typeclass constraints
limit the set of potential types (and, thus, potential values) while
also passing along the common functions that can be used with those values.


For example,an "Int" is only an Int, but it can make use of the methods of the "Num" and
"Integral" typeclasses because it has instances of both.

In sum, if a variable could be anything, then there’s little that can be done
to it because it has no methods. If it can be some types (say, a type that
is an instance of Num), then it has some methods. If it is a concrete type,
you lose the type flexibility but, due to the additive nature of typeclass
inheritance, gain more potential methods.

Parametricity means that the behavior of a
function with respect to the types of its (parametrically polymorphic) arguments
is uniform. The behavior can not change just because it was applied
to an argument of a different type

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


Definitions
============

1. Polymorphism refers to type variables which may refer to more than
one concrete type. In Haskell, this will usually manifest as parametric
or ad-hoc polymorphism. By having a larger set of types, we intersect
the commonalities of them all to produce a smaller set of correct terms.
This makes it less likely we’ll write an incorrect program and lets us
reuse the code with other types.
2. With respect to Haskell, the principal type is the most generic type
which still typechecks. More generally, Principal type is a property of
the type system you’re interacting with. Principal typing holds for
that type system if a type can be found for a term in an environment
for which all other types for that term are instances of the principal
type. Here are some examples:
-- Given the inferred types
a
Num a => a
Int
-- The principal type here is the
-- parametrically polymorphic 'a'.
-- Given these types
(Ord a, Num a) => a
Integer
-- The principal type is
-- (Ord a, Num a) => a
3. Type inference is a faculty some programming languages, most notably
Haskell and ML, have to infer principal types from terms without
needing explicit type annotations. There are, in some cases, terms in
Haskell which can be well-typed but which have no principal type. In
those cases, an explicit type annotation must be added.
CHAPTER 5. TYPES 188
4. Type variable is a way to refer to an unspecified type or set of types
in Haskell type signatures. Type variables ordinarily will be equal
to themselves throughout a type signature. Let us consider some
examples.
id :: a -> a
-- One type variable 'a' that occurs twice,
-- once as an argument, once as a result.
-- Parametrically polymorphic, could be
-- strictly anything
(+) :: Num a => a -> a -> a
-- One type variable 'a', constrained to needing
-- an instance of Num. Two arguments, one result.
-- All the same type.
5. A Typeclass is a means of expressing faculties or interfaces that multiple
datatypes may have in common and then write code just in terms
of those commonalities without repeating yourself for each instance.
Just as one may sum values of type Int, Integer, Float, Double, and
Rational, we can avoid having different (+), (*), (-), negate, etc.
functions for each by unifying them into a single typeclass. Importantly,
these can then be used with all types that have a Num instance.
Thus, a typeclass provides us a means to write code in terms of those
operators and have our functions be compatible with all types that
have instances of that typeclass, whether they already exist or are yet
to be invented (by you, perhaps).
6. Parametricity is the property that holds in the presence of parametric
polymorphism. Parametricity states that the behavior of a function
will be uniform across all concrete applications of the function. Parametricity4
tells us that the function:
id :: a -> a
4Examples are courtesy of the @parametricity twitter account.
https://twitter.com/parametricity
CHAPTER 5. TYPES 189
Can be understood to have the same exact behavior for every type in
Haskell without us needing to see how it was written. It is the same
property that tells us:
const :: a -> b -> a
const must return the first value — parametricity and the definition
of the type requires it!
f :: a -> a -> a
f can only return the first or second value, nothing else, and it will
always return one or the other consistently without changing. If the
function f made use of + or *, its type would necessarily be constrained
by the typeclass Num and thus be an example of ad-hoc, rather than
parametric, polymorphism.
blahFunc :: b -> String
blahFunc totally ignores its argument and is effectively a constant
value of type String which requires a throw-away argument for no
reason.
convList :: Maybe a -> [a]
Unless the result is [], the resulting list has values that are all the
same value.
7. Ad-hoc polymorphism (sometimes called “constrained polymorphism”)
is polymorphism that applies one or more typeclass constraints to
what would’ve otherwise been a parametrically polymorphic type variable.
Here, rather than representing a uniformity of behavior across
all concrete applications, the purpose of ad-hoc polymorphism is to
allow the functions to have different behavior for each instance. This
ad-hoc-ness is constrained by the types in the typeclass that defines
the methods and Haskell’s requirement that typeclass instances be
unique for a given type. For any given combination of typeclass and
a type, such as Ord and Bool, there must only exist one unique instance
in scope. This makes it considerably easier to reason about
typeclasses. See the example for a disambiguation.
(+) :: Num a => a -> a -> a
-- the above function is leveraging
-- ad-hoc polymorphism via the Num typeclass
c' :: a -> a -> a
-- This function is not,
-- it's parametrically polymorphic in 'a'.


