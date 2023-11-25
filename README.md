# toolbox

A minimal set of bash functions and tools

## load/install

```
  source toolbox
```

## list of tools

### directory tools

|function     |short description                                         |
|-------------|-------------------------------------------------------   |
|**push** dir_name|add dir_name to the directory stack (wrapper for pushd)   |
|**pop** 3        |remove the 3rd directory from the stack (wrapper for popd)|
|**up** 4         |go up 4 directories                                       |

### file/dir size
|function          |short description                                  |
|------------------|---------------------------------------------------|
|**zsize** file.gz     |show the uncompressed size of file.gz
|**zerodir** dir_name  |find zero-sized* directories in dir_name directory
|**zerofile** dir_name |find zero-sized* file from dir_name
|**zdu** dir_name      |show dir_name size (sum of file sizes)

zero-sized: empty(raw size) or empty(uncompressed size)

