/*
Design a C program that collects a fixed number of data entries from the user—each consisting of
an integer, a float, and a character (which must be an alphabetic letter). The program must validate
these inputs before writing them to a file. After storing the data, the program should read the file
and display its contents. The filename is provided by the user at runtime.

See PDF for sample input/output

- The program must prompt the user to enter a filename (to be used for both writing and reading data).
- For each entry (a total of 3 entries):
- An integer value.
- A float value.
- A single alphabetic character.
- If the user enters an invalid value, the program should notify the user and re-prompt for that input.
- The program writes the validated data to the user-specified file.
- After writing, the file is closed and then re-opened for reading.
- The data is read back and displayed on the console.
- The program should check for errors when opening the file (for both writing and reading) and
print an error message if the file cannot be opened.

*/
