from Crypto.Util.number import getStrongPrime
import hashlib

import os
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad


r1 =2568748433813321161874639775621008976218176085243148442053880160521563872123950485879781803171876295709491228751046125319137014580919198982132588104122368
k1 = 16398029187545116410379158779174289772216017281301637621417139570711691284296 
s = r1+k1
print("s : ",s)
cyphertext = bytes.fromhex('89c372210be2a7b313366206f7426f941157009493d00fcb18b467250139413b6ea1ada6302e1916b6c02a6f935f4ed4')
iv = bytes.fromhex("c7d192fb72b529acf7b57d488c182466")



def decrypt_flag(secret_key):
    sha1 = hashlib.sha1()
    print("secret_key",secret_key)
    sha1.update(str(secret_key).encode('ascii'))
    key = sha1.digest()[:16]
    print("key :",key)

    cipher = AES.new(key, AES.MODE_CBC, iv)
    ciphertext = cipher.decrypt(cyphertext)
    print(ciphertext)

    return ciphertext, iv

decrypt_flag(s)