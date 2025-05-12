num = int(input("Enter a number "))
print(num)



try:
    num = int(input("Enter a number "))
    print(num)
except:
    print("An error occurred ")
else:
    print('No error occurred ')


'''
                        Explanation of Control Flow with try-except-else
The updated code now includes an else block in the exception handling. Let's analyze the control flow:

The Code Structure
python
try:
    num = int(input("Enter a number "))  # Line 1
    print(num)                           # Line 2
except:
    print("An error occurred ")          # Line 3
else:
    print('No error occurred ')          # Line 4
Control Flow Explanation
There are two possible execution paths:

Path 1: Successful Execution (No Errors)
Program enters the try block

Executes input("Enter a number ") and waits for user input

User enters a valid integer (e.g., "5")

int() converts it successfully to the number 5

print(num) executes and displays 5

Since no exception occurred:

The except block is skipped

The else block executes, printing "No error occurred"

Program continues with any code after the try-except-else

Path 2: Error Case (Exception Occurs)
Program enters the try block

Executes input("Enter a number ") and waits for user input

User enters invalid input (e.g., "hello")

int() fails and raises a ValueError

Program immediately jumps to the except block

print("An error occurred ") executes

The else block is skipped entirely

Program continues with any code after the try-except-else

Key Points About else in Try-Except
The else block only executes if the try block completes successfully without any exceptions

It runs after the try block but before any finally block (if present)

It's useful for code that should only run when no exceptions occurred

It helps separate the error-prone code (try) from code that should only run when there are no errors (else)

'''