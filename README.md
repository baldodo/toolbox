# toolbox

A minimal set of bash functions and tools

## load/install

```
  source toolbox
  source pimp_my_prompt
```

## list of tools

### directory tools

|function     |short description                                         |
|-------------|-------------------------------------------------------   |
|**push** dir_name|add dir_name to the directory stack (wrapper for pushd)   |
|**pop** 3        |remove the 3rd directory from the stack (wrapper for popd)|
|**up** 4         |goes up 4 directories                                     |

*pushd* and *popd* are bash builtins used to put/remove directories into/from a stack. 
In my opinion they dont do what their names might indicate (they do more).
**push** and **pop** are wrappers around pushd and popd : they don't change the current directory, they simply add/remove a directory from the stack.

### file/dir size
|function          |short description                                  |
|------------------|---------------------------------------------------|
|**zsize** file.gz     |show the uncompressed size of file.gz
|**zerodir** dir_name  |find zero-sized* directories in dir_name directory
|**zerofile** dir_name |find zero-sized* file from dir_name
|**zdu** dir_name      |show dir_name size (sum of file sizes)

zero-sized: empty(raw size) or empty(uncompressed size). A directory which only contains empty files is considered zero-sized.

### pimp_my_prompt

A very basic way to customize your bash prompt.
After sourcing the script the following commands are available :

```
pimp mono|color|amber|blue|green|gris|kipik|rose
    some colors for the prompt

pimp shortdir|longdir|shorterdir
    short   = directory depth is 4
    shorter = directory depth is 2
    long    = directory depth is 8

pimp initiale|fullname|name|firstname|quadname|noname
    shorten username
     username: peter.smith
     fullname: peter.smith
     initiale: p.smith
         name: smith
    firstname: peter
     quadname: p.smi
       noname: do not display username

pimp host|hostname|host.domain|nohost
   shorten hostname
      full hostname: apollo-server-web.company.com
        host.domain: apollo-server-web.company.com
               host: web
           hostname: apollo-server-web
             nohost: hostname is not displayed

pimp count|nonum
   display or not the history number
pimp noflag|fr|it
   display french or italian flag
pimp 1line|2line
   prompt is 1line or 2line
pimp git|nogit
   git status is displayed or not
pimp simple
   very simple prompt
```
