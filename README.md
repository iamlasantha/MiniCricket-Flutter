# Mini Cricket 🏏

A simple and fun Flutter application that simulates a single over of cricket! Test your luck and see how many runs you can score in 6 balls.

## Features

-   **Interactive Gameplay**: Tap the "Bat" button to hit the ball and score runs.
-   **Randomized Scoring**: Each hit generates a random score between 0 and 6 runs.
-   **Special Event**: Watch out for the unlucky number 5! If you roll a 5, it counts as "No" runs, but you still lose a ball.
-   **Score Tracking**: Real-time display of your total Runs and remaining Balls.
-   **Game Reset**: Once the over (6 balls) is finished, easily reset the game to play again.

## Screenshots

<!-- Add screenshots of your app here -->
<!-- ![App Screenshot](path/to/screenshot.png) -->

## Getting Started

This project is a starting point for a Flutter application.

### Prerequisites

-   [Flutter SDK](https://flutter.dev/docs/get-started/install)
-   An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd my_flutter_app
    ```

    *Note: If you downloaded this as a zip file, extract it and navigate to the folder context.*

2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```

3.  **Run the app**:
    Connect your device or start an emulator/simulator, then run:
    ```bash
    flutter run
    ```

## How to Play

1.  Launch the app on your device.
2.  You will see the "Runs" counter at 0 and "Balls" at 6.
3.  Press the **Bat** button.
4.  A random run (1, 2, 3, 4, or 6) will be added to your score.
5.  If you get a 5, it displays "No" and adds 0 to your score.
6.  The ball count decreases by 1 after each hit.
7.  After 6 balls, the "Bat" button changes to **Reset**.
8.  Press **Reset** to start a new game!

## Project Structure

The main logic of the application is located in `lib/main.dart`.

-   **`Ground`**: The main Stateful Widget representing the game screen.
-   **`_GroundState`**: Handles the game state, including `runs`, `balls`, and the `random` logic for scoring.

## Assets

The app uses the following assets:
-   `assets/bat.png`
-   `assets/ball.png`

## Resources

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
