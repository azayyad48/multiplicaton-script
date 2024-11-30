# Multiplicaton-script
A Bash script for generating multiplication tables.

## 1. **Introduction**
Provide a brief description of the project, its purpose, and the main features of the script.

### Example:
This project is a Bash script designed to generate multiplication tables based on user input. It allows users to generate either a full multiplication table (from 1 to 10) or a partial multiplication table (within a custom range). The script includes input validation to ensure valid entries and provides a user-friendly output.

## 2. **Requirements**
List the prerequisites and tools needed to run the script.

### Example:
- A Unix-like operating system (Linux, macOS, etc.)
- Bash shell (typically pre-installed on most systems)

## 3. **How the Script Works**
Describe the flow of the script, explaining how it processes the user input and what actions it performs.

### Example:
1. **Prompt for Number**: The script first asks the user to enter the number for which they want to generate the multiplication table.
2. **Choose Table Type**: The user can choose between a full table (1 to 10) or a partial table within a specific range.
3. **Input Validation**: 
   - Ensures the number entered is valid.
   - Ensures the start and end range for partial tables are within the valid range (1 to 10).
   - If the start number is greater than the end number, the script generates a full table instead.
4. **Output**: Displays either the full or partial multiplication table, depending on user selection.

## 4. **Usage Example**
Provide examples of how the script behaves with different inputs. You can include expected outputs as examples.

### Example:
#### Full Table Example:
1. User enters a number, e.g., `6`.
2. User selects "Full Table".
3. The script outputs the full multiplication table from 1 to 10 for the number `6`.

#### Partial Table Example:
1. User enters a number, e.g., `4`.
2. User selects "Partial Table" and chooses a range (e.g., from 3 to 6).
3. The script outputs the multiplication table for `4` from `3` to `6`.

#### Invalid Range Example:
1. User enters a number, e.g., `5`.
2. User selects "Partial Table" but provides an invalid range where the start number is greater than the end number (e.g., from 8 to 3).
3. The script displays the full multiplication table for `5` from 1 to 10 instead.

## 5. **Input Validation**
Explain how the script validates user input to ensure it works correctly.

### Example:
- **Number Validation**: Ensures the entered number is a positive integer.
- **Range Validation**: Ensures the starting and ending numbers for the partial table are between 1 and 10.
- **Invalid Range Handling**: If the start number is greater than the end number, the script displays a full table from 1 to 10.

## 6. **Edge Cases**
List and describe any edge cases the script handles.

### Example:
- If the user enters a non-numeric value for the number or range, the script prompts an error message and terminates.
- If the start number is greater than the end number in the partial table, the script will display the full multiplication table instead of proceeding with the invalid range.

## 7. **Conclusion**
Summarize the script's functionality and any improvements or future features you may want to add.

### Example:
The multiplication table script is a simple, user-friendly tool for generating multiplication tables. It handles both full and partial tables with input validation and error handling. Future improvements could include additional formatting options, such as customizing the separator or output format.
