# english-su.com

## REQUIREMENTS

To build this site, we require [Hugo version 0.40.1](https://github.com/gohugoio/hugo/releases/tag/v0.40.1)

### Start the server with the robust theme

Run this command in this directory to use the hugo-future-imperfect

```
hugo -w server --buildDrafts
```

On Windows:
* Launch ConEmu
* Enter the following:
```
cd /mnt/c/Hugo/Sites/slqselina.github.io/
hugo server --buildDrafts
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
git subtree pull -q -m"pull latest master `date "+%Y-%m-%d-%H%M%S"`" --prefix=public git@github.com:slqselina/slqselina.github.io.git master
```

Generate site
```
rm -R public/*
git co public/CNAME
hugo -t hugo-future-imperfect
```
Add everything to git
```
git add -A
```
Commit and push
```
git commit -a -m "Site Deploy for master `date "+%Y-%m-%d-%H%M%S"`" && git push origin hugo
```
Push subtree
```
git subtree push --prefix=public git@github.com:slqselina/slqselina.github.io.git master
```





# english-su.com

### Start the server with the robust theme

Run this command in this directory to use the hugo-future-imperfect

```
hugo -w server --buildDrafts
```

On Windows:
* Launch ConEmu
* Enter the following:
```
cd /mnt/c/Hugo/Sites/slqselina.github.io/
hugo server --buildDrafts
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

You can run script to deploy:
```
./deploy.sh
```


Add subtree
```
git subtree add --prefix=public git@github.com:slqselina/slqselina.github.io.git master --squash
```
Pull subtree
```
git subtree pull -q -m"pull latest master `date "+%Y-%m-%d-%H%M%S"`" --prefix=public git@github.com:slqselina/slqselina.github.io.git master
```

Generate site
```
rm -R public/*
git co public/CNAME
hugo -t hugo-future-imperfect
```
Add everything to git
```
git add -A
```
Commit and push
```
git commit -a -m "Site Deploy for master `date "+%Y-%m-%d-%H%M%S"`" && git push origin hugo
```
Push subtree
```
git subtree push --prefix=public git@github.com:slqselina/slqselina.github.io.git master
```
