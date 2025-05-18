# RubyFruit
RubyFruit is an educational Ruby project that teaches core Object-Oriented Programming concepts.

It features a base `Fruit` class with subclasses like `Apple`, `Banana`, `Orange`, `Pear`, `Grape`, `Lemon`, `Grapefruit`, and a variety of `Cherry` types such as `BingCherry` and `RainierCherry`, demonstrating inheritance, polymorphism, encapsulation, and modules. Each file includes inline comments aimed at beginners.

The project also shows some more advanced Ruby features:

* `FruitBasket` mixes in `Enumerable` so you can treat a basket of fruits like any other collection.
* `FruitFactory` uses metaprogramming (`method_missing`) to dynamically create fruit objects.

## Running the demonstration
Execute the following command in the project directory to see the classes in action:

```bash
ruby demo.rb
```


## Running tests
Run the test suite with Rake:

```bash
rake
```
