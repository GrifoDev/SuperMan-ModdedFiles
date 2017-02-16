.class public Lsun/misc/URLClassPath;
.super Ljava/lang/Object;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/URLClassPath$FileLoader;,
        Lsun/misc/URLClassPath$JarLoader;,
        Lsun/misc/URLClassPath$Loader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DISABLE_JAR_CHECKING:Z

.field static final JAVA_VERSION:Ljava/lang/String;

.field static final USER_AGENT_JAVA_VERSION:Ljava/lang/String; = "UA-Java-Version"


# instance fields
.field private closed:Z

.field private jarHandler:Ljava/net/URLStreamHandler;

.field lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field loaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field urls:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z

    return v0
.end method

.method static synthetic -get2(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/misc/URLClassPath;I)Lsun/misc/URLClassPath$Loader;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "java.version"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    .line 73
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.misc.URLClassPath.debug"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lsun/misc/URLClassPath;->DEBUG:Z

    .line 75
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.misc.URLClassPath.disableJarChecking"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    :goto_1
    sput-boolean v2, Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z

    .line 63
    return-void

    .end local v0    # "p":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 72
    goto :goto_0

    .restart local v0    # "p":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 76
    goto :goto_1
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .locals 1
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V

    .line 117
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V
    .locals 3
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/misc/URLClassPath;->closed:Z

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V

    .line 112
    if-eqz p2, :cond_1

    .line 113
    const-string/jumbo v1, "jar"

    invoke-interface {p2, v1}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    .line 107
    :cond_1
    return-void
.end method

.method static check(Ljava/net/URL;)V
    .locals 8
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 438
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 439
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 441
    .local v4, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v1

    .line 442
    .local v1, "perm":Ljava/security/Permission;
    if-eqz v1, :cond_0

    .line 444
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v1    # "perm":Ljava/security/Permission;
    .end local v4    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local v1    # "perm":Ljava/security/Permission;
    .restart local v4    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    .line 448
    .local v2, "se":Ljava/lang/SecurityException;
    instance-of v5, v1, Ljava/io/FilePermission;

    if-eqz v5, :cond_1

    .line 449
    invoke-virtual {v1}, Ljava/io/FilePermission;->getActions()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "read"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 450
    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    instance-of v5, v1, Ljava/net/SocketPermission;

    if-eqz v5, :cond_3

    .line 453
    invoke-virtual {v1}, Ljava/net/SocketPermission;->getActions()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "connect"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 454
    move-object v0, p0

    .line 455
    .local v0, "locUrl":Ljava/net/URL;
    instance-of v5, v4, Ljava/net/JarURLConnection;

    if-eqz v5, :cond_2

    .line 456
    nop

    nop

    .end local v4    # "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    .line 458
    :cond_2
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 458
    invoke-virtual {v3, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    .line 461
    .end local v0    # "locUrl":Ljava/net/URL;
    .restart local v4    # "urlConnection":Ljava/net/URLConnection;
    :cond_3
    throw v2
.end method

.method private declared-synchronized getLoader(I)Lsun/misc/URLClassPath$Loader;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 308
    :try_start_0
    iget-boolean v5, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    monitor-exit p0

    .line 309
    return-object v7

    .line 320
    :cond_0
    :try_start_1
    iget-object v5, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "url":Ljava/net/URL;
    :try_start_2
    monitor-exit v6

    .line 326
    invoke-static {v2}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "urlNoFragString":Ljava/lang/String;
    iget-object v5, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlNoFragString":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, p1, 0x1

    if-ge v5, v6, :cond_4

    .line 316
    iget-object v6, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    :try_start_3
    iget-object v5, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 318
    return-object v7

    .line 316
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 333
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlNoFragString":Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-direct {p0, v2}, Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    .line 336
    .local v1, "loader":Lsun/misc/URLClassPath$Loader;
    invoke-virtual {v1}, Lsun/misc/URLClassPath$Loader;->getClassPath()[Ljava/net/URL;

    move-result-object v4

    .line 337
    .local v4, "urls":[Ljava/net/URL;
    if-eqz v4, :cond_3

    .line 338
    invoke-direct {p0, v4}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 345
    :cond_3
    :try_start_7
    iget-object v5, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v5, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    .end local v1    # "loader":Lsun/misc/URLClassPath$Loader;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlNoFragString":Ljava/lang/String;
    .end local v4    # "urls":[Ljava/net/URL;
    :cond_4
    iget-object v5, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/misc/URLClassPath$Loader;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object v5

    .line 340
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlNoFragString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    new-instance v1, Lsun/misc/URLClassPath$3;

    invoke-direct {v1, p0, p1}, Lsun/misc/URLClassPath$3;-><init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V

    .line 356
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/URLClassPath$Loader;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static pathToURLs(Ljava/lang/String;)[Ljava/net/URL;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 394
    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v4, p0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    new-array v6, v8, [Ljava/net/URL;

    .line 396
    .local v6, "urls":[Ljava/net/URL;
    const/4 v0, 0x0

    .line 397
    .local v0, "count":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 398
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    move-object v2, v3

    .line 405
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    :try_start_1
    invoke-static {v2}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v8

    aput-object v8, v6, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 409
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    array-length v8, v6

    if-eq v8, v0, :cond_1

    .line 410
    new-array v5, v0, [Ljava/net/URL;

    .line 411
    .local v5, "tmp":[Ljava/net/URL;
    invoke-static {v6, v9, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    move-object v6, v5

    .line 414
    .end local v5    # "tmp":[Ljava/net/URL;
    :cond_1
    return-object v6

    .line 406
    .end local v0    # "count":I
    .restart local v1    # "count":I
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v7

    .local v7, "x":Ljava/io/IOException;
    goto :goto_2

    .line 401
    .end local v1    # "count":I
    .end local v7    # "x":Ljava/io/IOException;
    .restart local v0    # "count":I
    :catch_1
    move-exception v7

    .restart local v7    # "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private push([Ljava/net/URL;)V
    .locals 4
    .param p1, "us"    # [Ljava/net/URL;

    .prologue
    .line 380
    iget-object v2, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v2

    .line 381
    :try_start_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 382
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 379
    return-void

    .line 380
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized addURL(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    monitor-enter p0

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 146
    return-void

    .line 147
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 149
    return-void

    .line 151
    :cond_2
    :try_start_4
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 144
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 424
    :try_start_0
    invoke-static {p1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return-object p1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized closeLoaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v4, p0, Lsun/misc/URLClassPath;->closed:Z

    if-eqz v4, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 125
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 126
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v4, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "loader$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/URLClassPath$Loader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .local v1, "loader":Lsun/misc/URLClassPath$Loader;
    :try_start_2
    invoke-virtual {v1}, Lsun/misc/URLClassPath$Loader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "loader":Lsun/misc/URLClassPath$Loader;
    .end local v2    # "loader$iterator":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 133
    .restart local v2    # "loader$iterator":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :cond_1
    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 134
    return-object v3
.end method

.method public findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    .local v1, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1, p1, p2}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v2

    .line 178
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_0

    .line 179
    return-object v2

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    return-object v3
.end method

.method public findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lsun/misc/URLClassPath$1;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$1;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v6, 0x0

    .line 194
    sget-boolean v3, Lsun/misc/URLClassPath;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 195
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URLClassPath.getResource(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    .local v1, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1, p1, p2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v2

    .line 201
    .local v2, "res":Lsun/misc/Resource;
    if-eqz v2, :cond_1

    .line 202
    return-object v2

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "res":Lsun/misc/Resource;
    :cond_2
    return-object v6
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/misc/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/misc/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lsun/misc/URLClassPath$2;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$2;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    iget-object v2, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
