# Test

## JS file

``` js
function HelloWorld() {
  return "Hello World!";
}
```

``` js
export default HelloWorld;
```

## Shell Session

``` shell-session
$ git checkout master
Switched to branch 'master'
Your branch is up-to-date with 'origin/master'.
$ git push
Everything up-to-date
$ echo "Foo
> Bar"
Foo
Bar
```

## HTML File

``` html
<div>
  Hello World!
</div>
```

## PHP

``` php
function gen_one_to_three() {
    for ($i = 1; $i &lt;= 3; $i++) {
        // Note that $i is preserved between yields.
        yield $i;
    }
}
```
