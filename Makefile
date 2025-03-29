# Makefile for Lists and Lists
# Interactive Scheme/Lisp tutorial in an Interactive Fiction format

SOURCE_URL = https://ifarchive.org/if-archive/games/source/inform/lists.tar.Z
GAME_URL = https://ifarchive.org/if-archive/games/zcode/lists.z5
SRC_DIR = listsdir
INFORM_BIN = inform

.PHONY: all clean fetch-game fetch-source extract-source analyze inspect run

all: fetch-game fetch-source extract-source

# Download the compiled Z-machine game file
fetch-game:
	fetch $(GAME_URL)

# Download the source code
fetch-source:
	fetch $(SOURCE_URL) -o lists.tar.Z

# Extract the source code
extract-source: lists.tar.Z
	tar -xzvf lists.tar.Z

# Run analysis tools on the game file
analyze: lists.z5
	echo "File information:" > analysis.txt
	file lists.z5 >> analysis.txt
	echo "\nHexdump header (first 128 bytes):" >> analysis.txt
	hexdump -C -n 128 lists.z5 >> analysis.txt
	echo "\nStrings in game file:" >> analysis.txt
	strings lists.z5 | head -n 100 >> analysis.txt

# Display key information about the game
inspect: analysis.txt
	cat analysis.txt

# Run the game
run: lists.z5
	frotz lists.z5

# Clean up generated files
clean:
	rm -f analysis.txt
	rm -f lists.tar.Z
	rm -rf $(SRC_DIR)
