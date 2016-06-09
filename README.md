# Roshambo App

## Your app should have:
* A view controller to begin a match, containing: rock, paper, and scissors buttons
* A view controller to display the results of a match, containing: A label to display the results of a match
* An image view to display the results of a match (optional)
* A “Play again” button

## Steps

1. Create a new Xcode project using the Single View template.
2. Add a swift file to your project, a subclass of UIViewController, so that you have two view controller files.Give the view controllers descriptive names.
3. Drag a second view controller into storyboard. Set its class in the identity inspector.
4. Add buttons and labels. 
5. Connect button and label outlets.

## Write the methods for the game:
6. Write methods to do the following:
* Randomly generate an opponent’s play i.e. rock, paper, or scissors.
* Compare the user’s play with the randomly generated play to determine a winner.
* Generate a message for the results of a match, for example: “Paper covers rock. You win!”
* Switch statements will be helpful in writing these methods.

## Present the results view controller:
7. Present the results view controller in three different ways.
* All code: Instantiate the results view controller using the storyboard, and set the text of its label property. Connect the action on the rock button.
* Perform Segue by Identifier: Create a named segue, and invoke the performSegueWithIdentifier method in the paper button action. In this case, the label text should be set in the prepareForSegue method.
* Automatically Triggered Segue: Create an automatically triggered segue in storyboard, connected directly to the scissors button. In this case, the label text should also be set in the prepareForSegue method.
* Set up the “Play again” button:
8. Write a “play again” method that dismisses the results view controller.
9. Connect the action on the play again button.
