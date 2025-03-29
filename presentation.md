# Presentation Notes: Lists and Lists

## Introduction Slide
- **Title**: "Lists and Lists: Teaching Scheme through Interactive Fiction"
- **Subtitle**: "Andrew Plotkin's 1996 Educational Z-machine Game"
- **Key Point**: This game demonstrates how interactive fiction can be used as a programming education tool

## Technical Implementation Highlights

### Z-Machine as a Learning Platform
- Released in 1996, using Inform 5 compiler
- Z-machine version 5 format (Z5)
- Implements a complete Scheme interpreter inside the Z-machine
- Memory constraints: Scheme heap size 9600 bytes, string heap 800 bytes

### Code Structure Analysis
- Main game code (lists.inf): ~1000 lines
- Manual (lists-manual.inf): ~1900 lines
- Scheme interpreter (zlisp-core.inf, zlisp-funs.inf): ~1400 lines
- Notable technical achievement: garbage collection implementation in a Z-machine

## Educational Approach

### Tutorial Structure
- Narrative frame: Player meets a genie who teaches Scheme
- Progressive problem difficulty (8 total challenges)
- In-game manual with 20 chapters covering Scheme concepts
- Self-paced exploration with immediate feedback

### Programming Concepts Covered
1. Basic atoms and evaluation
2. Lists and operations (car, cdr, cons)
3. Function definition with lambda
4. Recursion
5. Lexical scoping

## Key Source Code Insights

### Scheme Interpreter Implementation
- Tokenizer and parser for Scheme expressions
- Environment management and lexical scoping
- Fixed-size memory allocation with garbage collection
- Evaluation engine based on read-eval-print loop

### Game Mechanics
- Uses the standard Z-machine parser for navigation
- Embeds a custom parser for the Scheme language
- Interleaves narrative elements with programming exercises
- Tests user solutions against predefined checks

## Significance and Historical Context

### Educational Innovation
- Early example of "edutainment" for programming concepts
- One of the first interactive fiction games focused on teaching programming
- Notable for teaching functional programming (less common in 1990s education)

### Technical Achievement
- Implementation of a complex interpreter within severe memory constraints
- Demonstrates the versatility of the Z-machine beyond adventure games
- Shows how interactive fiction can go beyond traditional storytelling

## Demonstration Screenshots
- Show the intro screen and meeting the genie
- Display the Scheme interpreter interface (typing examples like `(+ 1 1)`)
- Show manual pages and tutorial content
- Demonstrate a programming problem and its solution

## Conclusion
- Historic example of programming education through interactive media
- Technical achievement in implementing a language interpreter in Z-machine
- Demonstration that interactive fiction can be used for teaching complex concepts
