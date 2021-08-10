# vimv
(Fork of https://github.com/thameera/vimv)

vimv is a terminal-based file rename utility that lets you easily mass-rename files using Vim.

## Installing

Use the included Makefile. Installation directory can be changed in config.mk
```shell
make install
```
Or just copy the `vimv` file to a location in your `$PATH` and make it executable.

## Usage
### vimv
1. Go to a directory and enter `vimv` with optionally, a list of files to rename.
2. A Vim window will be opened with names of all files.
3. Use Vim's text editing features to edit the names of files. For example, search and replace a particular string, or use visual selection to delete a block.
4. Save and exit. Your files should be renamed now.

### virm

## Other features

* If you want to list only a group of files, you can pass them as an argument. eg: `vimv *.mp4` `virm homework_*`
* If you have an `$EDITOR` environment variable set, both programs will use its value by default.
* If you are inside a Git directory, vimv will use `git mv` and virm will use `git rm` (instead of `mv` and `rm` respectively)
* You can use `/some/path/filename` format to move the file elsewhere during renaming. If the path is non-existent, it will be automatically created before moving.
* Use the `-a` flag as the first parameter to also list dot files (aka hidden files).

## Gotchas
* Don't delete or swap the lines while using vimv
* Don't modify lines without deleting them when using virm

Note: Both cases should be caught and no action would be performed

## Differences between this and the original
* Being able to rename hidden files with -a
* virm, just like vimv but for removing files
