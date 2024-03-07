from pwn import xor

key = b'debian'
enc = bytes.fromhex("2427221333602a362f5b3f5f272438494114")
enc = [x - 1 for x in enc]
enc = bytes(enc)
dec = b''
dec = xor(enc,key)

print(dec,key)