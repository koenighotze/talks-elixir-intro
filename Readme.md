# Intro into Elixir

This repo contains the slides and the Dockerfile used for a introduction-talk about
Elixir.

## The REPL

Using Docker, just run:
```
docker run -ti koenighotze/elixir 
```

...or build it yourself:

```
cd Dockerfile
docker build -t foo/bar .
docker run -ti foo/bar
```

Et voila, the Elixir REPL.


## The slides

Just open slides/index.html and you are good to go. These are based on reveal.js.
