## scratchpad_sample

This repo will show you how to use use github actions, github codespaces with the latest python and postgres support.
  
  * github codespace configuration are in `.devcontainers/` directory.
  * github actions configuration are in `.github/workflows/` directory.

### more info:

At this time this repo does not have a `requirements.txt`  There is an example in `.devcontainer/devcontainer.json` file with a `postCreateCommand` command.

run `./0002_python_web_server.py` to start a local web server in codespaces.  vscode should pop up a dialog box to open a web proxy to the codespace.  

### postgres support
`.devcontainer/docker-compose.yml` contains a `db` section that will start a postgres server.  
To connect locally from code space use:

`psql -h db -p 5432 -d app -U app_user`