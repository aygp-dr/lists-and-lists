# Contributing to Lists and Lists

Welcome to the Lists and Lists project! This guide will help new contributors get started with analyzing and documenting Andrew Plotkin's 1996 interactive fiction game that teaches Scheme programming.

## Prerequisites

Before contributing, you'll need:

1. **Git**: For version control
2. **Make**: For running project commands
3. **Frotz**: For running Z-machine games (`sudo apt install frotz` on Debian/Ubuntu)
4. **Z-Tools**: For Z-machine file analysis (included in `ztools` package)

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/aygp-dr/lists-and-lists.git
   cd lists-and-lists
   ```

2. **Fetch the game file and source code**:
   ```bash
   make all
   ```

3. **Run the game**:
   ```bash
   make run
   ```

## Project Structure

- `Makefile`: Build automation
- `analyse.sh`: Analysis script for Z-machine file
- `lists.z5`: The compiled Z-machine game file
- `listsdir/`: Extracted source code (after running `make extract-source`)
- `README.md`: Project overview
- `presentation.md`: Presentation notes

## How to Contribute

### Picking an Issue

1. Check the [Issues](https://github.com/aygp-dr/lists-and-lists/issues) page
2. Filter by "good first issue" label for beginner-friendly tasks
3. Comment on an issue to express interest before starting work

### Making Changes

1. Create a branch for your work:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes following our [code style guidelines](CLAUDE.md)

3. Test your changes:
   - For analysis scripts: Run the script and verify results
   - For documentation: Ensure accuracy and clarity

4. Commit your changes with a descriptive message:
   ```bash
   git commit -m "type: clear description of changes"
   ```
   Where `type` is one of: feat, fix, docs, style, refactor, test, chore

### Submitting a Pull Request

1. Push your branch to GitHub:
   ```bash
   git push -u origin feature/your-feature-name
   ```

2. Open a pull request on GitHub
3. Fill in the PR template with details about your changes
4. Wait for review

## Analysis Tasks

If you're interested in Z-machine analysis:

1. **File structure analysis**: Use tools like `infodump` to examine Z-machine header
2. **String extraction**: Use `txd` to extract text
3. **Memory mapping**: Create diagrams explaining memory usage

## Documentation Tasks

For documentation contributors:

1. **Educational content**: Document how the game teaches programming concepts
2. **Technical details**: Document the Scheme interpreter implementation
3. **Presentation materials**: Create slides or diagrams for presentations

## Getting Help

If you're stuck or have questions:

- Open a discussion on GitHub
- Check the [Z-machine Standards Document](https://inform-fiction.org/zmachine/standards/) for Z-machine details
- Review the [original game README](listsdir/readme) after extraction

Thank you for contributing to the Lists and Lists project!