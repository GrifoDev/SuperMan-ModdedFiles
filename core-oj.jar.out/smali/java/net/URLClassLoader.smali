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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 756
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 142
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 143
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 146
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 147
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 139
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 97
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 99
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 100
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 103
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 104
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 96
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    .line 183
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 185
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 186
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 189
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1, p3}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 190
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 182
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 109
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 111
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 112
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 115
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 116
    iput-object p3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 108
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 153
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 154
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 157
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 158
    iput-object p2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 150
    return-void
.end method

.method private defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 411
    .local v16, "t0":J
    const/16 v2, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 412
    .local v12, "i":I
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSourceURL()Ljava/net/URL;

    move-result-object v18

    .line 413
    .local v18, "url":Ljava/net/URL;
    const/4 v2, -0x1

    if-eq v12, v2, :cond_0

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "pkgname":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v14

    .line 417
    .local v14, "man":Ljava/util/jar/Manifest;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v2

    if-nez v2, :cond_0

    .line 419
    if-eqz v14, :cond_1

    .line 420
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v14    # "man":Ljava/util/jar/Manifest;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 437
    .local v11, "bb":Ljava/nio/ByteBuffer;
    if-eqz v11, :cond_2

    .line 439
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v15

    .line 440
    .local v15, "signers":[Ljava/security/CodeSigner;
    new-instance v9, Ljava/security/CodeSource;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 441
    .local v9, "cs":Ljava/security/CodeSource;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v9}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 422
    .end local v9    # "cs":Ljava/security/CodeSource;
    .end local v11    # "bb":Ljava/nio/ByteBuffer;
    .end local v15    # "signers":[Ljava/security/CodeSigner;
    .restart local v3    # "pkgname":Ljava/lang/String;
    .restart local v14    # "man":Ljava/util/jar/Manifest;
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

    .line 424
    :catch_0
    move-exception v13

    .line 427
    .local v13, "iae":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v2

    if-nez v2, :cond_0

    .line 429
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

    .line 443
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v13    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v14    # "man":Ljava/util/jar/Manifest;
    .restart local v11    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getBytes()[B

    move-result-object v6

    .line 445
    .local v6, "b":[B
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v15

    .line 446
    .restart local v15    # "signers":[Ljava/security/CodeSigner;
    new-instance v9, Ljava/security/CodeSource;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 447
    .restart local v9    # "cs":Ljava/security/CodeSource;
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
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 383
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/lang/Package;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0, p3}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    new-instance v1, Ljava/lang/SecurityException;

    .line 389
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

    .line 388
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    new-instance v1, Ljava/lang/SecurityException;

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sealing violation: can\'t seal package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 397
    const-string/jumbo v3, ": already loaded"

    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_1
    return-object v0
.end method

.method private isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;

    .prologue
    .line 521
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 523
    .local v0, "attr":Ljava/util/jar/Attributes;
    const/4 v2, 0x0

    .line 524
    .local v2, "sealed":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 525
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 527
    .end local v2    # "sealed":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 528
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 532
    :cond_1
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 3
    .param p0, "urls"    # [Ljava/net/URL;

    .prologue
    .line 737
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 740
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v2, Ljava/net/URLClassLoader$6;

    invoke-direct {v2, p0, v0}, Ljava/net/URLClassLoader$6;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    .line 739
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    .line 745
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .locals 3
    .param p0, "urls"    # [Ljava/net/URL;
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 713
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 716
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v2, Ljava/net/URLClassLoader$5;

    invoke-direct {v2, p0, p1, v0}, Ljava/net/URLClassLoader$5;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    .line 715
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    .line 721
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 327
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0, p1}, Lsun/misc/URLClassPath;->addURL(Ljava/net/URL;)V

    .line 326
    return-void
.end method

.method public close()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    .line 283
    .local v8, "security":Ljava/lang/SecurityManager;
    if-eqz v8, :cond_0

    .line 284
    new-instance v9, Ljava/lang/RuntimePermission;

    const-string/jumbo v10, "closeClassLoader"

    invoke-direct {v9, v10}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 286
    :cond_0
    iget-object v9, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v9}, Lsun/misc/URLClassPath;->closeLoaders()Ljava/util/List;

    move-result-object v4

    .line 290
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v10, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v10

    .line 291
    :try_start_0
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 292
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v0, "c":Ljava/io/Closeable;
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v6

    .line 296
    .local v6, "ioex":Ljava/io/IOException;
    :try_start_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 290
    .end local v0    # "c":Ljava/io/Closeable;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v6    # "ioex":Ljava/io/IOException;
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 299
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    .restart local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    :cond_1
    :try_start_3
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 302
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 303
    return-void

    .line 306
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    .line 310
    .local v5, "firstex":Ljava/io/IOException;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "error$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .line 311
    .local v2, "error":Ljava/io/IOException;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 313
    .end local v2    # "error":Ljava/io/IOException;
    :cond_3
    throw v5
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 469
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 470
    .local v10, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "specTitle":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "specVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 471
    .local v4, "specVendor":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "implTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "implVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 472
    .local v7, "implVendor":Ljava/lang/String;
    const/4 v11, 0x0

    .line 473
    .local v11, "sealed":Ljava/lang/String;
    const/4 v8, 0x0

    .line 475
    .local v8, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v10}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    .line 476
    .local v9, "attr":Ljava/util/jar/Attributes;
    if-eqz v9, :cond_0

    .line 477
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "specTitle":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "specVersion":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "specVendor":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "implTitle":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "implVersion":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "implVendor":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    .line 485
    .end local v2    # "specTitle":Ljava/lang/String;
    .end local v3    # "specVersion":Ljava/lang/String;
    .end local v4    # "specVendor":Ljava/lang/String;
    .end local v5    # "implTitle":Ljava/lang/String;
    .end local v6    # "implVersion":Ljava/lang/String;
    .end local v7    # "implVendor":Ljava/lang/String;
    .end local v11    # "sealed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v9

    .line 486
    if-eqz v9, :cond_7

    .line 487
    if-nez v2, :cond_1

    .line 488
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 490
    :cond_1
    if-nez v3, :cond_2

    .line 491
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 493
    :cond_2
    if-nez v4, :cond_3

    .line 494
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 496
    :cond_3
    if-nez v5, :cond_4

    .line 497
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 499
    :cond_4
    if-nez v6, :cond_5

    .line 500
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 502
    :cond_5
    if-nez v7, :cond_6

    .line 503
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 505
    :cond_6
    if-nez v11, :cond_7

    .line 506
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    .line 509
    :cond_7
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 510
    move-object v8, p3

    .end local v8    # "sealBase":Ljava/net/URL;
    :cond_8
    move-object v0, p0

    move-object v1, p1

    .line 512
    invoke-virtual/range {v0 .. v8}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
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

    .prologue
    .line 355
    :try_start_0
    new-instance v1, Ljava/net/URLClassLoader$1;

    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 354
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassNotFoundException;

    throw v1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 547
    new-instance v2, Ljava/net/URLClassLoader$2;

    invoke-direct {v2, p0, p1}, Ljava/net/URLClassLoader$2;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    .line 551
    iget-object v3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 546
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 553
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v1, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
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

    .prologue
    .line 568
    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    .line 570
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v1, Ljava/net/URLClassLoader$3;

    invoke-direct {v1, p0, v0}, Ljava/net/URLClassLoader$3;-><init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 13
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .prologue
    .line 633
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v6

    .line 635
    .local v6, "perms":Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    .line 641
    .local v8, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 642
    .local v9, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 648
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    :goto_0
    instance-of v10, v4, Ljava/io/FilePermission;

    if-eqz v10, :cond_3

    .line 652
    invoke-virtual {v4}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 653
    .local v5, "path":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 654
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 655
    new-instance v4, Ljava/io/FilePermission;

    const-string/jumbo v10, "read"

    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 683
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 684
    .local v7, "sm":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_1

    .line 685
    move-object v0, v4

    .line 686
    .local v0, "fp":Ljava/security/Permission;
    new-instance v10, Ljava/net/URLClassLoader$4;

    invoke-direct {v10, p0, v7, v0}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    .line 691
    iget-object v11, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 686
    invoke-static {v10, v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 693
    .end local v0    # "fp":Ljava/security/Permission;
    :cond_1
    invoke-virtual {v6, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 695
    .end local v7    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    return-object v6

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 645
    .local v4, "p":Ljava/security/Permission;
    const/4 v9, 0x0

    .local v9, "urlConnection":Ljava/net/URLConnection;
    goto :goto_0

    .line 657
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "p":Ljava/security/Permission;
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    :cond_3
    if-nez v4, :cond_5

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 658
    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    sget-char v11, Ljava/io/File;->separatorChar:C

    const/16 v12, 0x2f

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 659
    .restart local v5    # "path":Ljava/lang/String;
    invoke-static {v5}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 660
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 661
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 662
    :cond_4
    new-instance v4, Ljava/io/FilePermission;

    const-string/jumbo v10, "read"

    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "p":Ljava/security/Permission;
    goto :goto_1

    .line 669
    .end local v4    # "p":Ljava/security/Permission;
    .end local v5    # "path":Ljava/lang/String;
    :cond_5
    move-object v3, v8

    .line 670
    .local v3, "locUrl":Ljava/net/URL;
    instance-of v10, v9, Ljava/net/JarURLConnection;

    if-eqz v10, :cond_6

    .line 671
    nop

    nop

    invoke-virtual {v9}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    .line 673
    :cond_6
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 675
    new-instance v4, Ljava/net/SocketPermission;

    .line 676
    const-string/jumbo v10, "connect,accept"

    .line 675
    invoke-direct {v4, v1, v10}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "p":Ljava/security/Permission;
    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 227
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 229
    .local v5, "url":Ljava/net/URL;
    if-nez v5, :cond_0

    .line 230
    return-object v10

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 233
    .local v6, "urlc":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 234
    .local v2, "is":Ljava/io/InputStream;
    instance-of v7, v6, Ljava/net/JarURLConnection;

    if-eqz v7, :cond_3

    .line 235
    move-object v0, v6

    nop

    nop

    move-object v4, v0

    .line 236
    .local v4, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v3

    .line 237
    .local v3, "jar":Ljava/util/jar/JarFile;
    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v8

    .line 247
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    :cond_2
    :goto_0
    return-object v2

    .line 237
    .restart local v3    # "jar":Ljava/util/jar/JarFile;
    .restart local v4    # "juc":Ljava/net/JarURLConnection;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 248
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    .end local v6    # "urlc":Ljava/net/URLConnection;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/io/IOException;
    return-object v10

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "urlc":Ljava/net/URLConnection;
    :cond_3
    instance-of v7, v6, Lsun/net/www/protocol/file/FileURLConnection;

    if-eqz v7, :cond_2

    .line 243
    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    :try_start_3
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    goto :goto_0

    .line 243
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0}, Lsun/misc/URLClassPath;->getURLs()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
