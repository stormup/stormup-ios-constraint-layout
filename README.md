# ConstraintLayout on iOS like Android

This library was designed to help manage iOS auto layout by using methods that are named like Android's constraint layout



The usage is simple:


```
myView
    .constraintLayout
    .leftToLeftOfParent(withMargin: .small)
    .leftToLeftOfParent(withMargin: 8) //Alternativelly you can use CGFloat
    .topToBottomOf(topView)
    .topToBottomOf(topView, withMargin: .xxLarge)
```

Other methods you might find

- centerYTo...
- centerXTo...
- trailingTo...
- leadingTo...
- widthEqual..., width(10)
- heightEqual..., height(10)
- matchParent, matchParentHorizontally, matchParentVertically


The margins are NOT negative numbers like it happens on iOS, by default, the library already converts it.


Example, you want your view end (right) to the end (right) of it's parent, but with a distance of 16
```
let constraints = [
uterSquare.rightAnchor.constraint(equalTo: parentView.rightAnchor, constant: -10)
]
```

On constraintLayout

```
myView
    .constraintLayout
    .rightToRightOfParent(withMargin: 10)
```


### Activation

By default, all constraints are already activated once they're added. But you can disable the activation and activate at the end.

```
myView
    .constraintLayout
    .disableAutoActivation()
    .leftToLeftOfParent()
    .rightToRightOfParent()
    .activate()
```