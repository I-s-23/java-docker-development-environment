# Java-docker-development-environment

## OverView

Java Continer with Remote Containers

## Usage

1. VsCodeで「Ctrl + Shift + P」を押下
2. 「Remote-Containers: Open Folder in Container」と入力
3. このリポジトリをCloneしたディレクトリを選択
4. Dockerが起動して、Javaが使用可能になる

## 色々なメモ

- ComposeでJavaとGcloudが別々のコンテナで定義して同じ箇所で使えるか試してみたがダメだった

```bash
docker run -ti -d -gcloud-test

gcloud --version
java --version

docker run -it --rm \
  -v $HOME/.config/gcloud:$HOME/.config/gcloud \
  -v $PWD:$PWD \
  -e "HOME=$HOME" \
  -w $PWD \
  --entrypoint=gcloud \
  google/cloud-sdk:alpine \
  $*

docker run -it --rm \
  -v $PWD:$PWD \
  -e "HOME=$HOME" \
  -w $PWD \
  --entrypoint=gcloud \
  google/cloud-sdk:alpine \
  $*
```

## Version

- Java
  - AdaptOpenJDK11

## Vscode-extend

| extend                             | role                                                                                        | offical name                             |
| ---------------------------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------- |
| Java Extension Pack                | [Explanation](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) | "vscjava.vscode-java-pack"               |
| GitLens                            | Make Git history easier to see in VS Code                                                   | "eamodio.gitlens"                        |
| Visual Studio IntelliCode          | autocompletes coding with machine learning                                                  | "visualstudioexptteam.vscodeintellicode" |
| Path Intellisense                  | Visual Studio Code plugin that autocompletes filenames                                      | "christian-kohler.path-intellisense"     |
| Error Lens"                        | Display errors easily                                                                       | "usernamehw.errorlens"                   |
| Shortcuts                          | Code line into Bookmark                                                                     | "gizak.shortcuts"                        |
| coenraads.bracket-pair-colorizer-2 | {},[],pear add color to visible easiry                                                      | "coenraads.bracket-pair-colorizer-2"     |
