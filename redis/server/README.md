# 服务的启动过程
<image style="width:80%;" src='../../images/redis_server.jpg'>


# 初始化全局服务器配置
全局变量`server`：
```c
struct redisServer server; /* Server global state */
```

初始化函数`initServerConfig()`，主要初始化全局变量`server`的参数：
```c
struct redisServer {
    /* General */
    pid_t pid;                  /* Main process pid. */
    char *configfile;           /* Absolute config file path, or NULL */
    char *executable;           /* Absolute executable file path. */
    ... 
    /* Mutexes used to protect atomic variables when atomic builtins are
     * not available. */
    pthread_mutex_t lruclock_mutex;
    pthread_mutex_t next_client_id_mutex;
    pthread_mutex_t unixtime_mutex;
};
```

# 