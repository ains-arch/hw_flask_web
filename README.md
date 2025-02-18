# minimum viable flask thing

to run

```
$ ssh <user>@<domain> -p <bonus port> -L localhost:8080:localhost:1361
$ docker build -t flask_homework .
$ docker run -it -p 1361:1361 flask_homework
```

open on localhost:8080 on local browser
