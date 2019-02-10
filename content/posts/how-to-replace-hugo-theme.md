+++
date= "2019-02-10"
title= "How to Replace Hugo Theme"
slug="how-to-replace-hugo-theme"
tags= ["hugo", "theme"]
categories= ["General"]
+++

- Go to github page of the new theme that you want to replace (in my case it is cactus theme)
- Run this command in root folder of your website to download the theme:

```bash
> git submodule add https://github.com/digitalcraftsman/hugo-cactus-theme.git themes/cactus
```

- Replace your **config.toml** file with new theme's **config.toml** file
- In the new config.toml file, change the value of 'theme' parameter to your theme folder name (in this case it should be theme="cactus")
- Run this command in root folder to see your changes:

```bash
> hugo serve
```

- Check your localhost webpage to see changes and you are done.

### How to remove old theme
- Go to **.gitmodules** file under the root folder and delete the lines that related to old theme
- Go to themes folder under the root folder and delete the folder that belongs to old theme
- Run this command in root folder:

```bash
> git submodule update
```

### How to publish your changes to github: 
- Run this commands in order in root folder (Attention here: **docs** folder is the folder you would like to keep your built files):

```bash
> hugo -d docs
> git add .
> git commit -m "automatic message"
> git push
```