.class public abstract Lsun/net/ftp/FtpClientProvider;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static provider:Lsun/net/ftp/FtpClientProvider;


# direct methods
.method static synthetic -get0()Lsun/net/ftp/FtpClientProvider;
    .locals 1

    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-object v0
.end method

.method static synthetic -set0(Lsun/net/ftp/FtpClientProvider;)Lsun/net/ftp/FtpClientProvider;
    .locals 0

    sput-object p0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-object p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->loadProviderAsService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->loadProviderFromProperty()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/net/ftp/FtpClientProvider;->lock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    .line 40
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 59
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "ftpClientProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 57
    :cond_0
    return-void
.end method

.method private static loadProviderAsService()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method private static loadProviderFromProperty()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 65
    const-string/jumbo v6, "sun.net.ftpClientProvider"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "cm":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 67
    const/4 v6, 0x0

    return v6

    .line 70
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/net/ftp/FtpClientProvider;

    sput-object v6, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return v8

    .line 79
    .end local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 80
    .local v5, "x":Ljava/lang/SecurityException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    .end local v5    # "x":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 78
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 76
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 74
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static provider()Lsun/net/ftp/FtpClientProvider;
    .locals 2

    .prologue
    .line 138
    sget-object v1, Lsun/net/ftp/FtpClientProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 143
    :cond_0
    :try_start_1
    new-instance v0, Lsun/net/ftp/FtpClientProvider$1;

    invoke-direct {v0}, Lsun/net/ftp/FtpClientProvider$1;-><init>()V

    .line 142
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpClientProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract createFtpClient()Lsun/net/ftp/FtpClient;
.end method
