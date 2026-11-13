

# demo-argument-parser


> via Space-Separated




## Reference

* [How do I parse command line arguments in Bash?](https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash)



## Test

run

``` sh
./main.sh 1 2 --arch v_arch_1 v_arch_2 v_arch_3 --name v_name 3 4
```

show

```
1 2 v_arch_2 v_arch_3 3 4
ARG_ARCH: v_arch_1
ARG_NAME: v_name
ARGS_LIST: 1 2 v_arch_2 v_arch_3 3 4
```
