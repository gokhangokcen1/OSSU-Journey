# ML Expressions and Variable Bindings

An ML program is a sequence of `bindings`.
Each bindings gets `type-checked` and then `evaluated`. 

A binding associates a name with a value of expression, the `static environment` tracks the types of these binding during compilation, and the `dynamic environment` holds the actual values during runtime. 

When we just say environment its dynamic. 

## Variable binding
    val x = e;

val: keyword 
x: variable
e: expression

17 is a value, but 8+9 is not. All values are expressions. Not all expressions are values.

