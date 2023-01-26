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

user password: `app_password` from the `.devcontainer/docker-compose.yml` file.

Password for user app_user: 
psql (13.9 (Debian 13.9-0+deb11u1), server 15.1 (Debian 15.1-1.pgdg110+1))
WARNING: psql major version 13, server major version 15.
         Some psql features might not work.
Type "help" for help.
