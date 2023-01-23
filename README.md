## scratchpad_sample

This repo will show you how to use use github actions and github codespaces with the latest python versions.
  
  * github codespace configuration are in `.devcontainers/` directory.
  * github actions configuration are in `.github/workflows/` directory.

### more info:

At this time this repo does not have a `requirements.txt`  There is an example in `.devcontainer/devcontainer.json` file with a `postCreateCommand` command.

run `./0002_python_web_server.py` to start a local web server in codespaces.  vscode should pop up a dialog box to open a web proxy to the codespace.  

### future ideas:
I would like to get a postgres docker support to work with this setup.  There are some examples on the web but I had a hard time connecting to the postgres docker container.  

Let me know if you see areas for improvments but I also want to keep this repo as simple as possible and people build on top of it. Please make a PR if you have more ideas.

