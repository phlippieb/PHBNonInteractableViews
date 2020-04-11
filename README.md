# PHBNonInteractableViews

UI\*View subclasses that override `hitTest` to pass interactions through to their parent views

## isUserInteractionEnabled vs hitTest

Some real-world situations have tricky requirements in terms of interaction.

For example, consider a card-like cell. 
When a user taps on the card, the app should navigate somewhere.
The card has some subviews (images, labels, etc) that should not interfere with the interactability of the card on the whole.
But the card also has a button at the bottom which, when tapped, should dismiss the card.

In this a case, it is tempting but dangerous to set `isUserInteractionEnabled` on the container views (such as the stack view used to do the layout).
It might seem like that would make all the card's subviews non-interactable by default and prevent the subviews from intercepting taps that should go to the card.
But in actual fact, the subviews would not just become non-interactable *by default*; there would be no way to make the button interactable.

The actual solution is to subclass the container view and override `hitTest` to pass the interactions through to the parent class.

This library provides such subclasses of common UIView-types which override `hitTest`.

## Installation

### Cocoapods

You know the drill.

```ruby
pod 'PHBNonInteractableViews'
```

## Author

phlippieb, phlippie.bosman@gmail.com

## License

PHBStackLayout is available under the MIT license. See the LICENSE file for more info.
