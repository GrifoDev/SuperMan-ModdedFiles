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

    .prologue
    .line 55
    const-string/jumbo v0, "scl"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    .line 58
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    .line 42
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    iput-object v1, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    .line 101
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 102
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 105
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    iput-object v1, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 79
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 82
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/SecureClassLoader;->initialized:Z

    .line 75
    return-void
.end method

.method private check()V
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Ljava/security/SecureClassLoader;->initialized:Z

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "ClassLoader object not initialized"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method private getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .locals 8
    .param p1, "cs"    # Ljava/security/CodeSource;

    .prologue
    const/4 v4, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 200
    return-object v4

    .line 202
    :cond_0
    const/4 v1, 0x0

    .line 203
    .local v1, "pd":Ljava/security/ProtectionDomain;
    iget-object v5, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    monitor-enter v5

    .line 204
    :try_start_0
    iget-object v4, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/ProtectionDomain;

    move-object v1, v0

    .line 205
    .local v1, "pd":Ljava/security/ProtectionDomain;
    if-nez v1, :cond_1

    .line 206
    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v3

    .line 207
    .local v3, "perms":Ljava/security/PermissionCollection;
    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, p0, v4}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v1    # "pd":Ljava/security/ProtectionDomain;
    .local v2, "pd":Ljava/security/ProtectionDomain;
    :try_start_1
    iget-object v4, p0, Ljava/security/SecureClassLoader;->pdcache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_2

    .line 210
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

    .line 211
    sget-object v4, Ljava/security/SecureClassLoader;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "pd":Ljava/security/ProtectionDomain;
    .end local v3    # "perms":Ljava/security/PermissionCollection;
    .restart local v1    # "pd":Ljava/security/ProtectionDomain;
    :cond_1
    :goto_0
    monitor-exit v5

    .line 215
    return-object v1

    .line 203
    .end local v1    # "pd":Ljava/security/ProtectionDomain;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5

    throw v4

    .restart local v2    # "pd":Ljava/security/ProtectionDomain;
    .restart local v3    # "perms":Ljava/security/PermissionCollection;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "pd":Ljava/security/ProtectionDomain;
    .restart local v1    # "pd":Ljava/security/ProtectionDomain;
    goto :goto_1

    .end local v1    # "pd":Ljava/security/ProtectionDomain;
    .restart local v2    # "pd":Ljava/security/ProtectionDomain;
    :cond_2
    move-object v1, v2

    .end local v2    # "pd":Ljava/security/ProtectionDomain;
    .restart local v1    # "pd":Ljava/security/ProtectionDomain;
    goto :goto_0
.end method


# virtual methods
.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/nio/ByteBuffer;
    .param p3, "cs"    # Ljava/security/CodeSource;
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

    .prologue
    .line 174
    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getProtectionDomain(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "cs"    # Ljava/security/CodeSource;
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

    .prologue
    .line 142
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
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/security/SecureClassLoader;->check()V

    .line 192
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    return-object v0
.end method
