
a = 10
b = 0

try:
    print(num)
    print(a/b)
except ZeroDivisionError:
    print("Division by Zero is not possible .... ")
except NameError:
    print("Value is not good")
else:
    print("Exception 2")
finally:
    print("Hello")
    


'''
                                            Important Notes 

Why is "Division by Zero is not possible" being shown ??                         


Key points about this code:

It takes user input and tries to convert it to an integer

It attempts to print the number and then divide a by b (which would be 10/0)

It handles two specific exceptions:

ZeroDivisionError for division by zero

ValueError if the input can't be converted to an integer

The else block runs if no exceptions occur

The finally block always runs, regardless of whether an exception occurred

Note that in this specific case, the ZeroDivisionError will always occur because b = 0, unless a ValueError occurs first (if the user enters something that can't be converted to an integer).

a = 10
b = 0

try:
    print(num)
    print(a/b)
except ZeroDivisionError:
    print("Division by Zero is not possible .... ")
except NameError:
    print("Value is not good")
else:
    print("Exception 2")
finally:
    print("Hello")
    
Why is Division by Zero is not possible ....  is being shown
In your code, the output "Division by Zero is not possible ...." is shown because the ZeroDivisionError occurs before the NameError, and Python executes the first matching exception handler.

Step-by-Step Execution:
print(num) → This line raises a NameError because num is not defined anywhere in the code.

print(a/b) → This line would raise a ZeroDivisionError because b = 0, but it never gets executed because the NameError happens first.

Why is ZeroDivisionError caught instead of NameError?
The issue is in the order of exception handling. Python runs the try block line by line, and the first error encountered is NameError (due to num being undefined).

However, your except blocks are ordered as:

except ZeroDivisionError

except NameError

Since NameError occurs first, Python checks if there's a matching except block. But because ZeroDivisionError appears first, Python does not check the next except block until the first one fails to match.

What Actually Happens?
Python tries to match the NameError with ZeroDivisionError → No match.

Then it checks the next except (NameError) → Match! → So it prints "Value is not good".

The ZeroDivisionError block is never reached because the error was already caught.

Correct Output:
Your code should print:

Value is not good
Hello
(Not "Division by Zero is not possible ....")

Fixing the Issue:
If you want NameError to be caught first, reorder the except blocks:

python
a = 10
b = 0

try:
    print(num)  # NameError happens first
    print(a/b)  # ZeroDivisionError (never reached)
except NameError:
    print("Value is not good")  # This runs first
except ZeroDivisionError:
    print("Division by Zero is not possible ....")
else:
    print("Exception 2")
finally:
    print("Hello")  # Always runs
Output:

Value is not good
Hello
Key Takeaway:
Order of except matters! Python checks them in sequence and executes the first matching one.

If you reverse the order, ZeroDivisionError would be checked first, but since NameError occurs, it would still go to the correct handler.

The finally block always runs, regardless of exceptions.

'''