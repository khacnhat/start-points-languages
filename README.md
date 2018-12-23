
<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

Current architecture
[![Build Status](https://travis-ci.org/cyber-dojo/start-points-languages.svg?branch=master)](https://travis-ci.org/cyber-dojo/start-points-languages)

The [languages_list](https://github.com/cyber-dojo/start-points-languages/blob/master/languages_list)
file contains one url-per-line for each repo that lives at
https://github.com/cyber-dojo-languages.
Each repo's Travis script builds their docker image, tests their
start-point files, pushes their docker image to
dockerhub, notifies dependents.

Assuming the files in the repos specified in the list have the
[correct format](http://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html)
you create a languages start-point (volume) from the list as follows:

```bash
$ URL=https://github.com/cyber-dojo/start-points-languages/blob/master/languages_list
$ ./cyber-dojo start-point create olve --list=${URL}
$ ./cyber-dojo up --languages=olve
```

The [languages_list](https://github.com/cyber-dojo/start-points-languages/blob/master/languages_list)
file is the languages default. In other words the commands above are the same as:

```bash
$ ./cyber-dojo up
```

- - - -
New architecture (not live yet)
[![CircleCI](https://circleci.com/gh/cyber-dojo/start-points-languages.svg?style=svg)](https://circleci.com/gh/cyber-dojo/start-points-languages)

This repo specifies the the default language-test-framework start-points when
creating your own start-point image with the
[build_cyber_dojo_start_points_image.sh](../build_cyber_dojo_start_point_image.sh)
script. Viz, the first github URL option in this command:

```bash
$ build_cyber_dojo_start_points_image.sh \
    acme/my-start-points \
      https://github.com/cyber-dojo/start-points-languages.git \
      https://github.com/cyber-dojo/start-points-exercises.git \
      https://github.com/cyber-dojo/start-points-custom.git    \
```
