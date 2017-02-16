.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field static final DEBUG:Z

.field private static defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static lastVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    const/4 v1, -0x1

    sput v1, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    .line 55
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "javax.net.debug"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ssl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    sput-boolean v1, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    .line 45
    return-void

    .line 57
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .locals 12

    .prologue
    const-class v9, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v9

    .line 90
    :try_start_0
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v8, :cond_0

    sget v8, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v10

    if-ne v8, v10, :cond_0

    .line 91
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v8

    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v8

    sput v8, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    .line 95
    sget-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 96
    .local v7, "previousDefaultSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x0

    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 98
    const-string/jumbo v8, "ssl.SocketFactory.provider"

    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 105
    if-eqz v7, :cond_1

    .line 106
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 105
    if-eqz v8, :cond_1

    .line 107
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-object v8

    .line 110
    :cond_1
    :try_start_2
    const-string/jumbo v8, "setting up default SSLSocketFactory"

    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "cls":Ljava/lang/Class;
    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 126
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_2
    :goto_0
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "class "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " is loaded"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/SSLSocketFactory;

    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "instantiated an instance of class "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    .line 129
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v8, :cond_4

    .line 130
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v9

    return-object v8

    .line 115
    .restart local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 118
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 119
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 122
    :cond_3
    if-eqz v0, :cond_2

    .line 123
    const/4 v8, 0x1

    invoke-static {v2, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;
    goto :goto_0

    .line 132
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 133
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SSLSocketFactory instantiation failed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_7
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 140
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_5

    .line 141
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 146
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :cond_5
    :goto_1
    :try_start_8
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_6

    .line 147
    new-instance v8, Ljavax/net/ssl/DefaultSSLSocketFactory;

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "No factory found."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/Exception;)V

    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 150
    :cond_6
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v9

    return-object v8

    .end local v2    # "clsName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 143
    .restart local v2    # "clsName":Ljava/lang/String;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1
.end method

.method static getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljavax/net/ssl/SSLSocketFactory$1;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLSocketFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
