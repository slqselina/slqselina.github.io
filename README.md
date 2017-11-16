# english-su.com

### Start the server with the robust theme

Run this command in this directory to use the hugo-future-imperfect

```
hugo -w server --buildDrafts
```


To create a new post:
```
hugo new post/tahoe-rim-echo-summit-to-kingsbury-south.md
```

Compress the image:
```
cd static/img
jpegtran -copy none -optimize -progressive -outfile ferry-ride-small.jpg ferry-ride.jpg
```
