import copy

original = [[1, 2], [3, 4]]
shallow = original.copy()
deep = copy(original)

shallow[0][0] = 99
print(original)  # Output: [[99, 2], [3, 4]] (shallow copy reflects changes)

deep[0][0] = 42
print(original)  # Output: [[99, 2], [3, 4]] (deep copy does not reflect changes)
