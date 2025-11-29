```
▶ exiftool ~/Downloads/confidential.pdf 
ExifTool Version Number         : 13.42
File Name                       : confidential.pdf
Directory                       : /Users/ozaki/Downloads
File Size                       : 183 kB
File Modification Date/Time     : 2025:11:30 06:56:35+09:00
File Access Date/Time           : 2025:11:30 06:56:35+09:00
File Inode Change Date/Time     : 2025:11:30 06:56:35+09:00
File Permissions                : -rw-r--r--
File Type                       : PDF
File Type Extension             : pdf
MIME Type                       : application/pdf
PDF Version                     : 1.7
Linearized                      : No
Page Count                      : 1
Producer                        : PyPDF2
Author                          : cGljb0NURntwdXp6bDNkX20zdGFkYXRhX2YwdW5kIV9mOTQzMDBjNH0=
```
Base64ぽくね？
`cGljb0NURntwdXp6bDNkX20zdGFkYXRhX2YwdW5kIV9mOTQzMDBjNH0=`

Flag
```
▶ echo -n "cGljb0NURntwdXp6bDNkX20zdGFkYXRhX2YwdW5kIV9mOTQzMDBjNH0=" | base64 -d
picoCTF{puzzl3d_m3tadata_f0und!_f94300c4}
```