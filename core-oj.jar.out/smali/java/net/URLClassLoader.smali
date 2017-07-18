.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private closeables:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/io/Closeable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final ucp:Lsun/misc/URLClassPath;


# direct methods
.method static synthetic -get0(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;
    .locals 1

    iget-object v0, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;
    .locals 1

    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/net/URLClassLoader;Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    return-void
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 2

    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .locals 2

    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1, p3}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .locals 2

    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    iput-object p3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    iput-object p2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-void
.end method

.method private defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    const/16 v2, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSourceURL()Ljava/net/URL;

    move-result-object v18

    const/4 v2, -0x1

    if-eq v12, v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v14, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v15

    new-instance v9, Ljava/security/CodeSource;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v9}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    :try_start_1
    invoke-virtual/range {v2 .. v10}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v15

    new-instance v9, Ljava/security/CodeSource;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    array-length v8, v6

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method private getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Package;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sealing violation: package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is sealed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sealing violation: can\'t seal package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": already loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z
    .locals 5

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 3

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    new-instance v2, Ljava/net/URLClassLoader$6;

    invoke-direct {v2, p0, v0}, Ljava/net/URLClassLoader$6;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    return-object v1
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .locals 3

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    new-instance v2, Ljava/net/URLClassLoader$5;

    invoke-direct {v2, p0, p1, v0}, Ljava/net/URLClassLoader$5;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    return-object v1
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .locals 1

    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0, p1}, Lsun/misc/URLClassPath;->addURL(Ljava/net/URL;)V

    return-void
.end method

.method public close()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v9, Ljava/lang/RuntimePermission;

    const-string/jumbo v10, "closeClassLoader"

    invoke-direct {v9, v10}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iget-object v9, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v9}, Lsun/misc/URLClassPath;->closeLoaders()Ljava/util/List;

    move-result-object v4

    iget-object v10, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_1
    :try_start_3
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    return-void

    :cond_2
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    throw v5
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2, v10}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    if-eqz v9, :cond_0

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    :cond_0
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v9

    if-eqz v9, :cond_7

    if-nez v2, :cond_1

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v3, :cond_2

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v4, :cond_3

    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v5, :cond_4

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-nez v6, :cond_5

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    if-nez v7, :cond_6

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    if-nez v11, :cond_7

    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    :cond_7
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v8, p3

    :cond_8
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/net/URLClassLoader$1;

    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassNotFoundException;

    throw v1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/net/URLClassLoader$2;

    invoke-direct {v2, p0, p1}, Ljava/net/URLClassLoader$2;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v1, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/net/URLClassLoader$3;

    invoke-direct {v1, p0, v0}, Ljava/net/URLClassLoader$3;-><init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 13

    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    instance-of v10, v4, Ljava/io/FilePermission;

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/FilePermission;

    const-string/jumbo v10, "read"

    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v0, v4

    new-instance v10, Ljava/net/URLClassLoader$4;

    invoke-direct {v10, p0, v7, v0}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    iget-object v11, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v10, v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v6, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    :cond_2
    return-object v6

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    if-nez v4, :cond_5

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    sget-char v11, Ljava/io/File;->separatorChar:C

    const/16 v12, 0x2f

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    new-instance v4, Ljava/io/FilePermission;

    const-string/jumbo v10, "read"

    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v3, v8

    instance-of v10, v9, Ljava/net/JarURLConnection;

    if-eqz v10, :cond_6

    nop

    nop

    invoke-virtual {v9}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    :cond_6
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    new-instance v4, Ljava/net/SocketPermission;

    const-string/jumbo v10, "connect,accept"

    invoke-direct {v4, v1, v10}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v10

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    instance-of v7, v6, Ljava/net/JarURLConnection;

    if-eqz v7, :cond_3

    move-object v0, v6

    nop

    nop

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v3

    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v8

    :cond_2
    :goto_0
    return-object v2

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_0
    move-exception v1

    return-object v10

    :cond_3
    instance-of v7, v6, Lsun/net/www/protocol/file/FileURLConnection;

    if-eqz v7, :cond_2

    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0}, Lsun/misc/URLClassPath;->getURLs()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
