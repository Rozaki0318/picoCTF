data = r"xakgK\5cNs><m:i1>1991:nkjl<ii1j0n=mm09;<i:u"
flag = ""

for ch in data:
    flag += chr(ord(ch) ^ 8)   # XOR 8

print(flag)

