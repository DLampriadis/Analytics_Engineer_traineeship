import numpy as np


# Set up the function
def numbers():
    A = np.random.randint(1, 10)
    B = np.random.randint(1, 10)
    C = A * B
    while C != 4:
        print(A, C)
        A = np.random.randint(1, 10)
        B = np.random.randint(1, 10)
        C = A * B
    else:
        print('Success!', A, B)


# Call the function
numbers()
