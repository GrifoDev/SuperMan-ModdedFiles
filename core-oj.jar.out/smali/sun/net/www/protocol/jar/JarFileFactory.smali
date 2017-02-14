.class Lsun/net/www/protocol/jar/JarFileFactory;
.super Ljava/lang/Object;
.source "JarFileFactory.java"

# interfaces
.implements Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final fileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final instance:Lsun/net/www/protocol/jar/JarFileFactory;

.field private static final urlCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/jar/JarFile;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/jar/JarFileFactory;->-assertionsDisabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    new-instance v0, Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-direct {v0}, Lsun/net/www/protocol/jar/JarFileFactory;-><init>()V

    sput-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 7

    const/4 v6, -0x1

    sget-boolean v4, Lsun/net/www/protocol/jar/JarFileFactory;->-assertionsDisabled:Z

    if-nez v4, :cond_0

    sget-object v4, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    sget-object v4, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    invoke-static {p1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lsun/net/www/protocol/jar/JarFileFactory;->getPermission(Ljava/util/jar/JarFile;)Ljava/security/Permission;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    instance-of v4, v0, Ljava/io/FilePermission;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/FilePermission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "read"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/net/SocketPermission;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/net/SocketPermission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "connect"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    throw v2
.end method

.method public static getInstance()Lsun/net/www/protocol/jar/JarFileFactory;
    .locals 1

    sget-object v0, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    return-object v0
.end method

.method private getPermission(Ljava/util/jar/JarFile;)Ljava/security/Permission;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public close(Ljava/util/jar/JarFile;)V
    .locals 4

    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    if-eqz v0, :cond_0

    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    invoke-static {v0}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public get(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    if-nez v1, :cond_1

    invoke-static {p1, p0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    sget-object v3, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v3

    :try_start_1
    invoke-direct {p0, p1}, Lsun/net/www/protocol/jar/JarFileFactory;->getCachedJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->fileCache:Ljava/util/HashMap;

    invoke-static {p1}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    :cond_0
    :goto_0
    monitor-exit v3

    :cond_1
    :goto_1
    if-nez v1, :cond_4

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_2
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    invoke-static {p1, p0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v2, Lsun/net/www/protocol/jar/JarFileFactory;->instance:Lsun/net/www/protocol/jar/JarFileFactory;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lsun/net/www/protocol/jar/JarFileFactory;->urlCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    return-object v3
.end method
