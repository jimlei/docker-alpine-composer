Alpine Linux docker image with Composer with "composer" as entrypoint.

```bash
$ docker run --rm -it -v $(pwd):/data jimlei/alpine-composer install
```

#### Alias
Add to `~/.bashrc`
```bash
alias composer='docker run --rm -it -v $(pwd):/data jimlei/alpine-composer'
```

Load the changes
```bash
$ source ~/.bashrc
```

Usage
```bash
$ composer -v
```

