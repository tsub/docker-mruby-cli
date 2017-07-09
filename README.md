# docker-mruby-cli

Docker image for [mruby-cli] :whale:

## Usage

```
$ docker pull tsub/mruby-cli

# Generate a new mruby CLI
$ docker run -it -v $PWD:$PWD -w $PWD tsub/mruby-cli --setup my-cli
```

## Install with [Whalebrew]

```
$ whalebrew install tsub/mruby-cli

# Generate a new mruby CLI
$ mruby-cli --setup my-cli
```

## Get more details

See [mruby-cli]

[mruby-cli]: https://github.com/hone/mruby-cli
[Whalebrew]: https://github.com/bfirsh/whalebrew
