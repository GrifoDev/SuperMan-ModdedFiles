.class public abstract Ljava/nio/channels/spi/SelectorProvider;
.super Ljava/lang/Object;
.source "SelectorProvider.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method static synthetic -get0()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method static synthetic -set0(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/spi/SelectorProvider;
    .locals 0

    sput-object p0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderAsService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderFromProperty()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->lock:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 69
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 83
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "selectorProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 81
    :cond_0
    return-void
.end method

.method private static loadProviderAsService()Z
    .locals 5

    .prologue
    .line 110
    const-class v3, Ljava/nio/channels/spi/SelectorProvider;

    .line 111
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 110
    invoke-static {v3, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 112
    .local v2, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/channels/spi/SelectorProvider;>;"
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/spi/SelectorProvider;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const/4 v3, 0x0

    return v3

    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/spi/SelectorProvider;

    sput-object v3, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v3, 0x1

    return v3

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v1}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-nez v3, :cond_0

    .line 124
    throw v1
.end method

.method private static loadProviderFromProperty()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    const-string/jumbo v6, "java.nio.channels.spi.SelectorProvider"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "cn":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 90
    const/4 v6, 0x0

    return v6

    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 92
    const/4 v7, 0x1

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/spi/SelectorProvider;

    sput-object v6, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return v9

    .line 102
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 103
    .local v5, "x":Ljava/lang/SecurityException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v5}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 100
    .end local v5    # "x":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 101
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v4}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 98
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 99
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 96
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 97
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 2

    .prologue
    .line 165
    sget-object v1, Ljava/nio/channels/spi/SelectorProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 169
    :cond_0
    :try_start_1
    new-instance v0, Ljava/nio/channels/spi/SelectorProvider$1;

    invoke-direct {v0}, Ljava/nio/channels/spi/SelectorProvider$1;-><init>()V

    .line 168
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openPipe()Ljava/nio/channels/Pipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSocketChannel()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
