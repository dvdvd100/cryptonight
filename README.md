# cryptonight

cryptonight pow hashing library for my own miner. It simply externs monero "cn_slow_hash" function from within a .dll (windows) and/or .so (linux).

## Usage

example with python 2:

```
#!python2

import binascii
import ctypes

cf = ctypes.cdll.LoadLibrary('cryptonight.dll').cryptonight  
cf.argtypes = [ctypes.POINTER(ctypes.c_char), ctypes.c_int, ctypes.POINTER(ctypes.c_char), ctypes.c_int, ctypes.c_int]

input = binascii.unhexlify('37a636d7dafdf259b7287eddca2f58099e98619d2f99bdb8969d7b14498102cc065201c8be90bd777323f449848b215d2977c92c4c1c2da36ab46b2e389689ed97c18fec08cd3b03235c5e4c')  
output = ctypes.create_string_buffer(32)

cf(input, 76, output, 1, 0)

print len(input)  
print binascii.hexlify(input), '\n'

print len(output.raw)  
print binascii.hexlify(output.raw), '\n'

raw_input('[Press Enter to exit...]')
```    
Output is:
```
76
37a636d7dafdf259b7287eddca2f58099e98619d2f99bdb8969d7b14498102cc065201c8be90bd777323f449848b215d2977c92c4c1c2da36ab46b2e389689ed97c18fec08cd3b03235c5e4c

32  
564ce4dcb88014aeb9b241db8737355d41976194abb4b7f9fc23ca987b36ffe1

[Press Enter to exit...]
```
## License
The C code is GPL.
