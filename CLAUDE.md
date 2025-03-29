# Lists and Lists - Z-Machine Game Development Guide

## Build/Test Commands
- Build all: `make all`
- Fetch game file: `make fetch-game`
- Fetch source code: `make fetch-source`
- Extract source: `make extract-source`
- Run analysis: `make analyze`
- View analysis: `make inspect`
- Run game: `make run` (requires Frotz)
- Clean project: `make clean`
- Run analysis script: `./analyse.sh`
- Run specific Z-machine tests: `frotz -s <script_file> lists.z5`

## Code Style Guidelines
- **Makefile**: Use tab indentation, document targets with comments
- **Shell Scripts**: Use shebang line, document with comments, follow POSIX
- **Inform Source**:
  - Follow Inform 5/6 conventions for game code
  - Use consistent indentation (2 spaces recommended)
  - Group related functions together
  - Document complex algorithms with comments
- **Scheme Code**:
  - Follow standard Scheme conventions inside game code
  - Use proper indentation for nested expressions
  - Prefer meaningful symbol names over abbreviations
- **Documentation**: Use Markdown for all documentation files
- **Error Handling**: For shell scripts, check command success with proper error codes

## Z-Machine Development Notes
- Z-machine version 5 format supported
- Memory constraints: Limited heap size
- Use Frotz interpreter for testing