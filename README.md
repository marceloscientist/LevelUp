# LevelUp – Assignment I

LevelUp is a Swift-based command-line application developed as part of Assignment I of the Capgemini iOS training program.

The objective of this project is to practice Swift fundamentals, asynchronous programming concepts, and to progressively introduce architectural organization before advancing to full iOS application development.

---

## Assignment Context

This assignment focuses on strengthening core Swift knowledge through practical exercises executed in a command-line environment. User interface concerns are intentionally excluded in order to emphasize language fundamentals, problem solving, code structure, and architectural thinking.

The project evolves incrementally as new exercise lists are introduced throughout the course.

---

## Project Overview

LevelUp is implemented as a command-line application using Swift. The project groups exercises by course lists and reflects a gradual increase in complexity, moving from basic concepts to more structured and layered design.

The codebase demonstrates early exposure to separation of concerns and clean organization principles.

---

## Project Structure

The project is organized into the following main areas:

- **Core**  
  Contains shared utilities and helper components reused across the application, such as console utilities and input handling.

- **Listas**  
  Groups exercises according to the course lists.

  - **Lista03_Async**  
    Focuses on asynchronous programming concepts and related exercises.

  - **Lista04_Contas**  
    Introduces layered organization, separating responsibilities into:
    - Domain
    - UseCases
    - Infrastructure

- **main.swift**  
  Defines the application entry point.

This structure mirrors the learning progression of the course and supports maintainability and clarity.

---

## Technologies Used

- Swift  
- Xcode  
- Swift Command Line Tool target

---

## How to Run

Open the LevelUp.xcodeproj file in Xcode.  
Select the appropriate scheme.  
Run the project using Command + R.

The application output will be displayed in the Xcode console.

---

## Notes

This project is intentionally designed as a command-line application to establish a strong foundation in Swift and software design principles.

Subsequent assignments build upon the concepts explored here, transitioning toward full iOS application development using SwiftUI, navigation patterns, and architectural approaches such as MVVM.