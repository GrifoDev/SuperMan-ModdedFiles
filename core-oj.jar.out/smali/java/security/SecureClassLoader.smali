.class public Ljava/security/SecureClassLoader;
.super Ljava/lang/ClassLoader;
.source "SecureClassLoader.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final initialized:Z

.field private final pdcache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/CodeSource;",
            "Ljava/security/ProtectionDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "scl"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    return-void
.end method

.method private check()V
    .locals 2

    iget-boolean v0, p0, Ljava/security/SecureClassLoader;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "ClassLoader object not initialized"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/ProtectionDomain;

    move-object v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v3

    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, p0, v4}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_2

    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getPermissions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :cond_1
    :goto_0
    monitor-exit v5

    return-object v1

    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-direct {p0, p5}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1

    invoke-direct {p0}, Ljava/security/SecureClassLoader;->check()V

    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    return-object v0
.end method
