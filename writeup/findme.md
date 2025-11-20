```
Project/picoCTF/writeup  main ✔                                                                                                                                                                     13h3m  
▶ curl -X POST http://saturn.picoctf.net:59434/login -d "username=test" -d "password=test\!"                                

Found. Redirecting to /next-page/id=cGljb0NURntwcm94aWVzX2Fs%                                                                                                                                               
```

```
Project/picoCTF/writeup  main ✔                                                                                                                                                                     13h4m  
▶ curl -X GET http://saturn.picoctf.net:59434/next-page/id=cGljb0NURntwcm94aWVzX2Fs -d "username=test" -d "password=test\!" 

<!DOCTYPE html>
<head>
    <title>flag</title>
</head>
<body>
    <script>
        setTimeout(function () {
           // after 2 seconds
           window.location = "/next-page/id=bF90aGVfd2F5XzI1YmJhZTlhfQ==";
        }, 0.5)
      </script>
    <p></p>
</body>%                                                                                             
```

```                                                                                                       
Project/picoCTF/writeup  main ✔                                                                                                                                                                     13h4m  
▶ echo -n "cGljb0NURntwcm94aWVzX2FsbF90aGVfd2F5XzI1YmJhZTlhfQ==" | base64 -d                                               
picoCTF{proxies_all_the_way_25bbae9a}% 
```
