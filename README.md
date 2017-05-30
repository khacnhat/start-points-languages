
[Take me to the cyber-dojo home page](https://github.com/cyber-dojo/cyber-dojo).

- - - -

[![Build Status](https://travis-ci.org/cyber-dojo/start-points-languages.svg?branch=master)](https://travis-ci.org/cyber-dojo/start-points-languages)

<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

The git repo for [cyber-dojo's](https://github.com/cyber-dojo/web)
[setup a new practice session from a <em>default</em> start point] languages+tests choices.

<img src="https://github.com/cyber-dojo/start-points-languages/blob/master/setup_default_start_point_languages.png" width="700px"/>

You can specify and use an alternative languages+tests start-point.

Assuming the files in the specified repo have the
[correct format](http://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html):

```
$ ./cyber-dojo start-point create --help
$ ./cyber-dojo start-point create olve --git=https://github.com/olve/start-points-languages.git
$ ./cyber-dojo up --languages=olve
```
