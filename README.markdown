# Vim
Below you can find an overview of all the Vim goodness packed in the vim dotfiles.

## Cheat Sheet
The default map leader `\` can be changed to `,` in your `.vimrc`, by setting:
	let mapleader = ","

### Navigation

* `<Leader>t` Goto File ([FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder.git))
* `<Leader>p` Goto Function in File ([FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder.git))
* `<Leader>w` Goto Word ([EasyMotion](https://github.com/Lokaltog/vim-easymotion.git))
* `<Leader>b` Goto Buffer ([FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder.git))
* `<S-right>` Goto Next Buffer
* `<S-left>` Goto Previous Buffer
* `<Leader>r` Show Tags in File ([TagList](https://github.com/vim-scripts/taglist.vim))
* `<Leader>f` Find in Files ([Ack](https://github.com/mileszs/ack.vim.git))

### Coding
* `<C-Space>` Intelligent Omni Completion
* `<C-y>` Zen Coding Expand Abbreviation ([ZenCoding](https://github.com/mattn/zencoding-vim.git))
* `<Leader>z` Use the Zend Code Analyzer for PhP syntax checking ([vim-zendcodeanalyzer](git@github.com:folke/vim-zendcodeanalyzer.git))
* `<tab>` Activate Snippet ([UltiSnips](https://github.com/rygwdn/ultisnips))

### Editing
* `<Leader>g` Visualize Undo Tree ([Gundo](https://github.com/sjl/gundo.vim.git))
* `<Leader>y` Show [YankRing](https://github.com/chrismetcalf/vim-yankring.git)
* `p` Paste last entry from paste buffer
* `<C-p>` Cycle though older entries in paste buffer ([YankRing](https://github.com/chrismetcalf/vim-yankring.git))
* `%` Find matching brackets, tags, … ([Matchit](https://github.com/edsono/vim-matchit))

### General
* `<Leader>q` Quit Vim
* `<Leader>x` Close Current Buffer
* `<Leader>c` Regenerate ctags
* `<Leader>s` Execute `./sync` (put whatever in there that's needed for syncing with your staging environment)

### Commands
* `:FixNewLines` Fixes all line endings
* `:w!!` Saves the file through sudo
* `:Hammer` Preview markdown and other formats in your browser ([Hammer](https://github.com/robgleeson/hammer.vim))
* `All the G… commands, too many to list here :-)` ([Fugitive](https://github.com/tpope/vim-fugitive.git))

## Beautifiers
* [CSApprox](https://github.com/godlygeek/csapprox) Make gvim-only colorschemes work transparently in terminal vim
* [Colorizer](https://github.com/lilydjwg/colorizer) colorize hex color values in css files
* [MiniBufExpl](https://github.com/fholgado/minibufexpl.vim.git) Get a nice looking tab bar on top showing active buffers

## Invisible Super Heroes
* [PhpComplete](https://github.com/shawncplus/phpcomplete.vim.git) Fixes omni completion for PhP
* [Syntastic](git@github.com:folke/syntastic.git) Syntax Checking for a variety of file types when saving
* [AutoTag](https://github.com/folke/AutoTag) Automagically updates your tags file
* [delimitMate](https://github.com/Raimondi/delimitMate) Automatically add closing brackets

## File Types
* [sass]()
* [less](https://github.com/groenewege/vim-less.git)
* [MarkDown]()

## Color Schemes









