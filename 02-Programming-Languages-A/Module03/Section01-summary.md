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

Definition example:
* Less-than comparison: 
    - Syntax: e1 < e2 where e1 and e2 are expressions
    - Type-checking: type bool but only if e 1 and e2 have type int in the same static environment, else does not type-check
    - Evaluation: evaluate e1 to v1 and e2 to v2 in the same dynamic environment and then produce true if v1 is less than v2 and false otherwise 

```
RECALL
Whenever you learn a new construct in a programming language, you should ask these three questions: What is the syntax? What are the type-checking rules? What are the evaluation rules?

Syntax: There is grammar for speaking languages and there is syntax for programmnig languages.  Some rules and recipes to writing code, communicate with electronic circuits and hardwares.

Type-checking rules: There are several types of components. If we want to use these components we need to type-checking. Because some types cannot evaluating in some ways. For example you cannot combine a string and number. You have to convert number to string firstly. Type-checking rules are effective to error-handling. 

Evaluation rules: The steps or process by which the construct is executed or computed, including any changes to state or output.


```

