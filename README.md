# iOS App: Guess the color
## _Swift exercise_

¡Hola mundo!

I have been learning a lot about Swift and after reading quite a bit I found a nice proyect/tutorial in [Ray Wenderlich's Website](https://www.raywenderlich.com/) that allows you to create a fun game ✨.

The app will show a random color 🎨 and the player have to match the color using de RGB Sliders. When the user thinks it have matched the color it can validate it and will receive a score, the closest to 💯 the better the guess. 

<img src="https://user-images.githubusercontent.com/81619759/138847160-d746c736-a6f8-422e-af15-3dcf9d04e863.png" alt="App view when starting the game" width="300"/> <img src="https://user-images.githubusercontent.com/81619759/138847206-e66ef947-98da-4e32-9424-02c856ff35d3.png" alt="App view as you try to guess the colors" width="300"/> <img src="https://user-images.githubusercontent.com/81619759/138847591-f2fb37c6-965f-4f18-b4b9-4a2eb9ce21b7.png" alt="Alert with score" width="300"/>

## Some Requirements 📋

- Create a Swift App
- Color to match must generate randomly every time the app runs
- Matched color must change and be shown as the user use the sliders
- Alert must show the user the score

## Extra features 🌟

- Add option to retry the game
- Views file must not contain app logic

## Built with 🔨
- XCode
- SwiftUI

## Development ⌨️

As I'm starting my Swift journey, at first I did the whole game in a single file that I later refactored in order to organise the project and separate logic from view. 
The view can be separated in four different parts:

* First one are the Rectangle(). There are two of them and each one receives from our viewModel different values. First rectangle receives what I called the "target values", this values are generated randomly unsing a "Double.random".
Second Rectangle() receive the "Guess Value" that is the one that the user can change. This value is initialized as 0.5 this way, when the user starts the game, the sliders are centered.

* Then goes the "Validate my match" button. I had the button appearence customized but there are two really important things about the button, one regarding to the appearance and the other one to the functionality. For the first one I added `.buttonStyle(PlainButtonStyle())` this removes the "link" aspect of the button so the text is not blue as would be with any link.
Regarding to the functionality, the button action call a variable with a boolean value that will trigger the alert with the user score and two buttons, a primary that invites it to try a new game that will reset the sliders values and another one to just keep trying.

* In order to the button to works we need to send it a function. This function compares the guessed values with the randomly generated values and return this value in a scale over 100. So if you score a 100 you did a perfect match. 

* Fourth comes the Sliders. The sliders values are collected by three different guess variables each of them for the red, green and blue color that conforms de RGB. 

### Some things I really like 💖

📱**Button**📱

I like pretty things and I really wanted to customize the "Validate my match!" button in order for it to look like it and to be kind of minimalist. And I loved the final result

<img src="https://user-images.githubusercontent.com/81619759/138862988-b4b02aae-2221-4b14-8b6e-fc4c19aa2192.png" alt="Customized button" width="300"/>

🚨**Alert**🚨

First of all a shoutout to my mentor that told me, jusf FYI, that a view can only have one alert. Also as I was doing the project I had this idea to let the user to retry the game. For so I first learned how to add what is called a `secondaryButton` and then I added a `resetGuessNumber()` function that as the name says reset the sliders value.


### My challenges 🚩

I would like in the future to add some testing to the code.



## Codefactor 
[![CodeFactor](https://www.codefactor.io/repository/github/silviaespanagil/rgb-bullseye-game/badge)](https://www.codefactor.io/repository/github/silviaespanagil/rgb-bullseye-game)
