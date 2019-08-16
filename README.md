# GistGem

Based off [Gist](https://github.com/defunkt/gist). A Ruby Gem command line tool for uploading files to Github Gist.

## How to Use

1. First create an [Github Access Token](https://github.com/settings/tokens)

2. Save the token to a file name `.gist`. [Bind Mount](https://docs.docker.com/storage/bind-mounts/) that file to `/root/.gist` as shown below

[See here](https://github.com/defunkt/gist#password-less-login) for the **why**, and **how** of above.

3. Use container ❗️

```
docker pull natac13/gistgem

docker container run -i --mount type=bind,source=/home/natac/.gist,target=/root/.gist natac13/gistgem [command]
```

If run without any command, will output a list of the Public Gists associated with the access token.

### [Available Commands](https://github.com/defunkt/gist#password-less-login)

### TL'DR

Motivation was to update my `.bash_aliases` file with a command line tool. 

### License 

MIT
