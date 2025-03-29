#!/bin/sh
# Analyze Lists and Lists z5 file for presentation purposes

# Create analysis directory
mkdir -p analysis

# Basic file information
echo "# Lists and Lists Z-Machine Analysis" > analysis/summary.md
echo "" >> analysis/summary.md
echo "## Basic File Information" >> analysis/summary.md
echo '```' >> analysis/summary.md
file lists.z5 >> analysis/summary.md
ls -la lists.z5 >> analysis/summary.md
echo '```' >> analysis/summary.md

# Z-machine header analysis
echo "" >> analysis/summary.md
echo "## Z-Machine Header Analysis" >> analysis/summary.md
echo '```' >> analysis/summary.md
echo "Hexdump of first 64 bytes (Z-machine header):" >> analysis/summary.md
hexdump -C -n 64 lists.z5 >> analysis/summary.md
echo '```' >> analysis/summary.md

# Extract strings for demonstration
echo "" >> analysis/summary.md
echo "## Notable Strings" >> analysis/summary.md
echo '```' >> analysis/summary.md
strings lists.z5 | grep -i scheme -A 2 -B 2 >> analysis/summary.md
strings lists.z5 | grep -i lisp -A 2 -B 2 >> analysis/summary.md
strings lists.z5 | grep -i function -A 2 -B 2 >> analysis/summary.md
echo '```' >> analysis/summary.md

# Catalog important functions from source (if extracted)
if [ -d "listsdir" ]; then
  echo "" >> analysis/summary.md
  echo "## Core Scheme Functions Implemented" >> analysis/summary.md
  echo '```' >> analysis/summary.md
  grep -r "fn_" listsdir/zlisp-funs.inf | grep "\[" | sed 's/\[.*$//' >> analysis/summary.md
  echo '```' >> analysis/summary.md
  
  echo "" >> analysis/summary.md
  echo "## Manual Chapters" >> analysis/summary.md
  echo '```' >> analysis/summary.md
  grep -r "Chapter" listsdir/lists-manual.inf | grep print_title >> analysis/summary.md
  echo '```' >> analysis/summary.md
fi

# Create key commands reference for demonstration
echo "" > analysis/commands.md
echo "# Key Commands for Lists and Lists Demo" >> analysis/commands.md
echo "" >> analysis/commands.md
echo "## Game Navigation" >> analysis/commands.md
echo "- `n` or `north`: Go through the door" >> analysis/commands.md
echo "- `examine door`: Look at the door" >> analysis/commands.md
echo "- `examine desk`: Look at the desk" >> analysis/commands.md
echo "- `examine computer`: Look at the computer" >> analysis/commands.md
echo "- `push green button`: Start the Scheme interpreter" >> analysis/commands.md
echo "- `push yellow button`: Reset the interpreter" >> analysis/commands.md
echo "" >> analysis/commands.md
echo "## Inside the Interpreter" >> analysis/commands.md
echo "- `:q`: Exit the interpreter" >> analysis/commands.md
echo "- `:m`: Access the manual" >> analysis/commands.md
echo "- `:?`: Show help commands" >> analysis/commands.md
echo "- `:g`: Force garbage collection" >> analysis/commands.md
echo "" >> analysis/commands.md
echo "## Scheme Examples to Demonstrate" >> analysis/commands.md
echo "```scheme" >> analysis/commands.md
echo ";; Basic evaluation" >> analysis/commands.md
echo "5" >> analysis/commands.md
echo "(+ 1 2)" >> analysis/commands.md
echo "" >> analysis/commands.md
echo ";; Defining values" >> analysis/commands.md
echo "(define x 42)" >> analysis/commands.md
echo "x" >> analysis/commands.md
echo "" >> analysis/commands.md
echo ";; Lists" >> analysis/commands.md
echo "'(a b c)" >> analysis/commands.md
echo "(car '(a b c))" >> analysis/commands.md
echo "(cdr '(a b c))" >> analysis/commands.md
echo "" >> analysis/commands.md
echo ";; Functions" >> analysis/commands.md
echo "(define double (lambda (n) (* n 2)))" >> analysis/commands.md
echo "(double 5)" >> analysis/commands.md
echo "```" >> analysis/commands.md

echo "Analysis complete. Check the analysis directory for results."
