with open("practice.txt",'r') as f:
    # f.write("Hi Everyone\n")
    # f.write("we are learnig File I/O\n")
    # f.write("using Java\n")
    # f.writelines(["Hello\n","How\n","are\n","you\n"])
    # Changed the mode to write read mode .. 
    data = f.read()
    print(data)
    data = data.replace("Java","Python")
    print(data)

with open ("practice.txt",'w') as f:
    f.write(data)
    