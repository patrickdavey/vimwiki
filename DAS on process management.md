Introduction to `pstree` using `bg` `fg` `jobs` also foregrounding specific jobs with `%<number>`

Also showed how in unix everything is a file, and a nice way to diff arbitrary content. E.G diff two websites:

```bash
diff -u <(curl www.google.com | tidy) <(curl www.google.fr | tidy)
```
