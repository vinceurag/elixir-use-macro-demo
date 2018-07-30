# Use Macro Example

Simple demo to understand how to use macros, behaviours and callbacks.

## Explanation

```
use UseMacro.Macros.ExampleMacro,
  test: false,
  module: __MODULE__
```

The snippet above indicates that the module wants to `use` the module `UseMacro.Macros.ExampleMacro` with some opts (`test` and `module`).

Looking at `UseMacro.Macros.ExampleMacro`, we can see that it has a `@callback` directive. So, if another module has a `behaviour` of that module, it must implement the function stated in the `@callback` directive.

If that's the case, why does it need to be implemented in the `UseMacro` module, given that it has no `@behaviour` directive? Since the `UseMacro` module _uses_ the `UseMacro.Macros.ExampleMacro` module, it executes the macro `__using__`. In the `__using__` macro, it specifies that the module that uses it should `behave` as the module itself. Since the module itself has a `@callback` directive, the module that `uses` it should implement the function specified.

---
Author: [Vince Urag](https://twitter.com/VinceUrag) | 07.30.2018
