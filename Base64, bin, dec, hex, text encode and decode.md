- **Base64 Encode**:
```
# From stdin
echo "text" | base64
# From file
base64 file.txt
```
- **Base64 Decode**:
```
# From stdin
echo "dGV4dA==" | base64 --decode
# From file
base64 --decode file.txt
```
- **Binary to Text**:
```
# Binary file to text
xxd -r -b file.bin > file.txt
```
- **Text to Binary**:
```
# Text file to binary
xxd -b file.txt > file.bin
```
- **Hex to Text**:
```
# From hex string
echo "68656c6c6f" | xxd -r -p
# From file
xxd -r -p file.hex > file.txt
```
- **Text to Hex**:
```
# From stdin
echo "hello" | xxd -p
# From file
xxd -p file.txt > file.hex
```
- **Binary to Hex**:
```
# From binary file
xxd file.bin > file.hex
```
- **Hex to Binary**:
```
# From hex file
xxd -r file.hex > file.bin
```
- **Binary to Decimal**:
```
# From binary string
echo $((2#1010))
# From binary file
od -An -t u1 file.bin
```
- **Decimal to Binary**:
```
# From decimal
echo "obase=2; 10" | bc
# From decimal file
od -An -t u1 file.dec | awk '{printf "%b", $1}'
```
- **Decimal to Hex**:
```
# From decimal
printf "%x\n" 255
# From decimal file
od -An -t u1 file.dec | awk '{printf "%x\n", $1}'
```
- **Hex to Decimal**:
```
# From hex string
echo $((16#ff))
# From file
xxd -r -p file.hex | od -An -t u1
```
