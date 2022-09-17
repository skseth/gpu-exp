# Example 1.3: Add arrays with cuda.grid
import numpy as np
import numba
from numba import cuda

@cuda.jit
def add_array(a, b, c):
    i = cuda.grid(1)
    if i < a.size:
        c[i] = a[i] + b[i]

N = 20
a = np.arange(N, dtype=np.float32)
b = np.arange(N, dtype=np.float32)

dev_a = cuda.to_device(a)
dev_b = cuda.to_device(b)
dev_c = cuda.device_array_like(a)
add_array[4, 8](dev_a, dev_b, dev_c)

c = dev_c.copy_to_host()
print(c)