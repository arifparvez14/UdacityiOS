Design problem and solutions

Problems:
1. Coupling: Dependent code sections to each others.
2. Fragility: Something unexpected happened when change.
3. Immobility: Difficulty to reuse code.

Solutions:
1. Extensibility: Easy to add or change functionality.
2. Encapsulation: Details components are enclosed so that can’t access by external parts.
3. Reusability: Reuse code.


- DRY ( Don’t Repeat Yourself)
- SOLID:

S - Single Responsibility Principle: Class/ Method have a very specific purpose or responsibility.

O - Open/Close: Classes should be open for extension and closed for modification. Idea behind that we should write class with the intension that it should never change. But when requirement do change, you should extend and not modify behaviour of the class you already written.

L - Liskov Substitution: Part of a codebase that reference a certain class should be substitutable by the class’s subclasses. 

I - Interface Segregation: Interface or protocols should not be generalised and define many methods. Instead interface should contain very specific and targeted methods. As a rule of thumb, it’s better to declare many small protocols versus one fat protocol.

D - Dependency Inversion: High-level module should not depend on low level module. Instead high level module should depend on abstraction which lower level module can implement.
