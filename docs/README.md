
[![Build Status](https://travis-ci.org/cyber-dojo/start-points-languages.svg?branch=master)](https://travis-ci.org/cyber-dojo/start-points-languages)

The [languages_list](https://github.com/cyber-dojo/start-points-languages/blob/master/languages_list)
file contains one url-per-line for each repo that lives at
https://github.com/cyber-dojo-languages.
Each repo's Travis script builds their docker image, tests their
start-point files, pushes their docker image to
dockerhub, notifies dependents.

- - - -

Assuming the files in the repos specified in the list have the
[correct format](http://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html)
you create a languages start-point from the list as follows:

```bash
$ URL=https://github.com/cyber-dojo/start-points-languages/blob/master/languages_list
$ ./cyber-dojo start-point create olve --list=${URL}
$ ./cyber-dojo up --languages=olve
```

The [languages_list](https://github.com/cyber-dojo/start-points-languages/blob/master/languages_list)
file is the languages default. In other words the commands above are the same as:

```
$ ./cyber-dojo up
```

<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

<img src="https://github.com/cyber-dojo/start-points-languages/blob/master/docs/setup_default_practice.png" width="700px"/>
