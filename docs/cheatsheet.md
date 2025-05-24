# Z-Machine Analysis Cheat Sheet

This cheat sheet provides quick references for commands used in analyzing Z-machine files, particularly for the Lists and Lists project.

## Make Commands

| Command | Description |
|---------|-------------|
| `make all` | Run all fetch and extraction steps |
| `make fetch-game` | Download the compiled Z-machine game file |
| `make fetch-source` | Download the source code |
| `make extract-source` | Extract the source code from archive |
| `make analyze` | Run analysis tools on the game file |
| `make inspect` | Display key information about the game |
| `make run` | Run the game using Frotz |
| `make clean` | Clean up generated files |

## Z-Machine Analysis Tools

### Frotz (Running Games)

| Command | Description |
|---------|-------------|
| `frotz lists.z5` | Run the game interactively |
| `frotz -s script.txt lists.z5` | Run the game with input from script |
| `frotz -r savefile.sav lists.z5` | Run the game from a saved position |

### Infodump (File Analysis)

| Command | Description |
|---------|-------------|
| `infodump lists.z5` | Dump a summary of the story file |
| `infodump -s lists.z5` | Show story file header information |
| `infodump -k lists.z5` | List all objects in the game |
| `infodump -d lists.z5` | Disassemble the game code |
| `infodump -g lists.z5` | Show all global variables |

### Txd (Text Extraction)

| Command | Description |
|---------|-------------|
| `txd lists.z5` | Extract all text from game file |
| `txd -c lists.z5` | Extract all text with context |
| `txd -f 'keyword' lists.z5` | Extract text containing keyword |

### File Examination

| Command | Description |
|---------|-------------|
| `file lists.z5` | Show file type information |
| `hexdump -C -n 64 lists.z5` | Display first 64 bytes (header) in hex |
| `strings lists.z5 | grep pattern` | Find specific strings in the file |

## Scheme Interpreter Commands

When running the game, these commands interact with the embedded Scheme interpreter:

| Command | Description |
|---------|-------------|
| `push green button` | Start the Scheme interpreter |
| `push yellow button` | Reset the interpreter |
| `:q` | Exit the interpreter |
| `:m` | Access the manual |
| `:?` | Show help commands |
| `:g` | Force garbage collection |

## Basic Scheme Examples

```scheme
;; Basic evaluation
5
(+ 1 2)

;; Defining values
(define x 42)
x

;; Lists
'(a b c)
(car '(a b c))  ; Returns first element
(cdr '(a b c))  ; Returns list without first element
(cons 'x '(y z)) ; Constructs new list (x y z)

;; Functions
(define double (lambda (n) (* n 2)))
(double 5)
```

## Custom Analysis Script

```bash
./analyse.sh  # Run the custom analysis script
```

This will:
1. Create an analysis directory
2. Generate a summary.md file with file information
3. Extract Z-machine header information
4. Extract notable strings
5. Catalog important functions from source
6. Create a commands reference file

## Source Code Navigation

After extraction, key files to examine:

| File | Description |
|------|-------------|
| `listsdir/lists.inf` | Main game source |
| `listsdir/lists-manual.inf` | In-game Scheme manual |
| `listsdir/zlisp-core.inf` | Scheme interpreter core |
| `listsdir/zlisp-funs.inf` | Scheme interpreter functions |
| `listsdir/zlisp.inf` | Simple execution shell |
| `listsdir/readme` | Original readme file |