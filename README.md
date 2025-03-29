# Lists and Lists - Interactive Scheme Tutorial Analysis

This project contains files for analyzing and presenting Andrew Plotkin's 1996 interactive fiction game "Lists and Lists", which teaches Scheme programming through an interactive narrative.

## Project Structure

```
.
├── Makefile           # Automation for fetching and analyzing the game
├── README.md          # This file
├── lists.z5           # The compiled Z-machine game file
├── analysis.txt       # Generated analysis of the game file
└── listsdir/          # Extracted source code directory
    ├── lists.inf            # Main game source
    ├── lists-manual.inf     # In-game Scheme manual
    ├── zlisp-core.inf       # Scheme interpreter core
    ├── zlisp-funs.inf       # Scheme interpreter functions
    ├── zlisp.inf            # Simple execution shell
    └── readme              # Original readme file
```

## About the Game

"Lists and Lists" is an interactive fiction game created by Andrew Plotkin in 1996. It serves as a tutorial for Scheme programming (a dialect of Lisp) by placing the player in an interactive narrative where they learn programming concepts from a genie character.

The game features:

1. A fully functional Scheme interpreter embedded in the Z-machine
2. A comprehensive manual explaining Scheme concepts
3. Programming puzzles with increasing complexity
4. A narrative framework that guides the learning process

## Key Features to Highlight in Presentation

### Scheme Implementation

The game implements a subset of Scheme within the Z-machine, demonstrating:

- Tokenizing and parsing
- Memory management with garbage collection
- Function evaluation
- Lexical scoping
- List manipulation primitives

### Educational Approach

The tutorial covers:

- Basic syntax and semantics of Scheme
- Atoms and lists as fundamental data structures
- Function definition and application
- Recursion
- Scope and environment concepts

## How to Use This Repository

1. Run `make fetch-game` to download the game file
2. Run `make fetch-source` to download the source code
3. Run `make extract-source` to extract the source files
4. Run `make analyze` to generate analysis of the game file
5. Run `make inspect` to view the analysis
6. Run `make run` to play the game

## Z-Machine Technical Details

The Z-machine is a virtual machine developed by Infocom for text adventure games. It features:

- Portable bytecode format
- Text compression
- Object-oriented programming system
- Virtual memory management

This game is implemented as a Z-code version 5 (Z5) file.

## Credits

- Game created by Andrew Plotkin (1996)
- Source code available at the IF Archive
- Frotz interpreter used to run the game
