num = int(input("Enter a number "))
print(num)



try:
    num = int(input("Enter a number "))
    print(num)
except:
    print("An error occurred ")




'''

                         Explanation of Control Flow in the Given Code

The code you've provided demonstrates basic input handling in Python with error handling. Let me explain the control flow for both versions:

First Version (Without Error Handling)
python
num = int(input("Enter a number "))  # Line 1
print(num)                           # Line 2
Control Flow:

Program executes Line 1: input("Enter a number ")

Displays "Enter a number " to the user

Waits for user input

User provides input (let's say "5")

int() attempts to convert the input string to an integer

If successful (e.g., user entered "5"):

num gets the integer value 5

Program proceeds to Line 2 and prints 5

If unsuccessful (e.g., user entered "hello"):

int() raises a ValueError exception

Program crashes with a traceback error message

Second Version (With Error Handling)
python
try:
    num = int(input("Enter a number "))  # Line 1
    print(num)                           # Line 2
except:
    print("An error occurred ")          # Line 3
Control Flow:

Program enters the try block

Executes Line 1: input("Enter a number ")

Same behavior as before

User provides input

Case 1: Valid integer input (e.g., "5")

int() converts successfully

num gets the integer value

Program executes Line 2, printing the number

Skips the except block entirely

Continues with any code after the try-except

Case 2: Invalid input (e.g., "hello")

int() fails and raises ValueError

Program immediately jumps to the except block

Line 2 (print(num)) is skipped

Executes Line 3, printing "An error occurred"

Continues with any code after the try-except

Key Differences:
The first version crashes on invalid input, while the second version gracefully handles errors

In the second version, the except block catches any exception (not just ValueError), which is generally not recommended - it's better to catch specific exceptions

The control flow diverges at the point of exception

'''