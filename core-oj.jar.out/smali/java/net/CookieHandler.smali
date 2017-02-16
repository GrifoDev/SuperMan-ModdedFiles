.class public abstract Ljava/net/CookieHandler;
.super Ljava/lang/Object;
.source "CookieHandler.java"


# static fields
.field private static cookieHandler:Ljava/net/CookieHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljava/net/CookieHandler;
    .locals 3

    .prologue
    const-class v2, Ljava/net/CookieHandler;

    monitor-enter v2

    .line 73
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 74
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lsun/security/util/SecurityConstants;->GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 77
    :cond_0
    sget-object v1, Ljava/net/CookieHandler;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setDefault(Ljava/net/CookieHandler;)V
    .locals 3
    .param p0, "cHandler"    # Ljava/net/CookieHandler;

    .prologue
    const-class v2, Ljava/net/CookieHandler;

    monitor-enter v2

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 94
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 95
    sget-object v1, Lsun/security/util/SecurityConstants;->SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 97
    :cond_0
    sput-object p0, Ljava/net/CookieHandler;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 92
    return-void

    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
