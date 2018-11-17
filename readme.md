## Installation steps
- add ssh public key to both gilab and github account
- install docker and docker compose in you server
- create docker-compose file and past below code. Edit the env variable and port
- add webhook on github to your server ip and port
```
version: '3'
services:
  time-sheet:
    image: pravashupreti/gh2gl-sync
    hostname: gh2gh-sync
    restart: always
    ports:
      - "5500:5500"
    volumes:
      - ~/.ssh/:/root/.ssh/
    environment:
      - 'REPO_NAME=reponame'
      - 'GITHUB_REPO=https://github.com/pravashupreti/reponame.git'
      - 'GITLAB_REPO=https://gitlab.com/inhouse/reponame.git'
      - 'LOCAL_REPO_PATH=reponame'
      - 'GITLAB_DOMAIN=gitlab.com'
    command: python3 index.py
```