num = int(input("Enter a number "))
print(num)



try:
    num = int(input("Enter a number "))
    print(num)
except:
    print("An error occurred ")
else:
    print('No error occurred ')
finally:
    print("Work Done !")

''' 
                    Explanation of Control Flow with try-except-else-finally
Here's the complete breakdown of how the code executes with all four blocks: try, except, else, and finally.

The Code Structure
python
try:
    num = int(input("Enter a number "))  # Risky operation
    print(num)                          # Only runs if above succeeds
except:
    print("An error occurred ")         # Runs only if exception occurs
else:
    print('No error occurred ')         # Runs only if NO exception occurs
finally:
    print("Work Done !")                # ALWAYS runs, exception or not
Control Flow Cases
Case 1: Successful Execution (Valid Number Input)
try block executes:

input() gets user input (e.g., "5")

int() successfully converts to 5

print(num) outputs 5

Since no error occurred:

except block is skipped

else block executes: prints "No error occurred"

finally block ALWAYS executes:

Prints "Work Done !"

Output:

5
No error occurred 
Work Done !
Case 2: Error Case (Invalid Input)
try block begins:

input() gets user input (e.g., "hello")

int() fails → raises ValueError

Exception handling:

Jumps immediately to except block

Prints "An error occurred "

else block is skipped (because an error occurred)

finally block ALWAYS executes:

Prints "Work Done !"

Output:

An error occurred 
Work Done !
Key Points About Each Block
try block:

Contains code that might raise exceptions

If exception occurs, rest of try block is skipped

except block:

Only executes if an exception occurs

Handles the error gracefully

else block:

Only executes if NO exceptions occurred in try

For code that should run only when successful

finally block:

ALWAYS executes, whether:

The try succeeded

An exception occurred and was caught

An exception occurred and wasn't caught

Used for cleanup code (closing files, releasing resources)

Why This Structure Matters
Complete error handling: Covers all possible outcomes

Resource safety: finally ensures cleanup happens

Clear logic separation:

try: Risky operations

except: Error handling

else: Success path

finally: Mandatory cleanup

This is the most comprehensive form of exception handling in Python, suitable for production-grade code where you need to handle all possible scenarios gracefully.
    
'''