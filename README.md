# english-su.com

### Start the server with the robust theme

Run this command in this directory to use the hugo-future-imperfect

```
hugo -w server --buildDrafts
```

On Windows:
```
cd C:\hugo\sites\slqselina.github.io
C:\hugo\bin\hugo server --buildDrafts
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

## Deploying the site
Add subtree
```
git subtree add --prefix=public git@github.com:slqselina/slqselina.github.io.git master --squash
```
Pull subtree
```
git subtree pull --prefix=public git@github.com:slqselina/slqselina.github.io.git master
```

Generate site
```
rm -R public/*
git co public/CNAME
hugo -t hugo-future-imperfect
```
Commit and push
```
git commit -a -m "Site Deploy for master `date "+%Y-%m-%d-%H%M%S"`" && git push origin hugo
```
Push subtree
```
git subtree push --prefix=public git@github.com:slqselina/slqselina.github.io.git master
```
