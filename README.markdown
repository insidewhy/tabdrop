# TabDrop

`:tab drop` is like `:tabedit` but if the file is already open in a tab then vim will switch to that tab instead of opening a second copy. However it only works when vim is built with GUI support and has a [serious bug](https://github.com/vim/vim/issues/1660). `:TabDrop` works in vim however it is built and works with plugins that break when using `:tab drop` due to the bug.

## Usage

The same as ":tab drop file" but works in terminal vim.
```
:TabDrop file
```

Like ":tab drop file" but when the file is already open in a tab then move it before the current tab before selecting it.
```
:TabDropHere file
```
