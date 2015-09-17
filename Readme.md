# Intro into Elixir

This repo contains the slides and the Dockerfile used for a introduction-talk about
Elixir.

## The REPL

Install Docker. Now. Go!
Back again? Ok....
Just run the following for the REPL

```
docker run -ti  koenighotze/elixir
```

If you want to do real Elixir development, start docker like this:

```
docker run -ti -v <WHERE_ARE_YOUR_SCRIPTS>:/home/demo/src koenighotze/elixir /bin/bash
```

This will mount your local directory ```<WHERE_ARE_YOUR_SCRIPTS>``` as ```/home/demo/src```, so you can run scripts from there.

## DIY

...or build it yourself:

```
cd Dockerfile
docker build -t foo/bar .
docker run -ti foo/bar
```

Et voila, the Elixir REPL.


## The slides

Just open slides/index.html and you are good to go. These are based on reveal.js.
