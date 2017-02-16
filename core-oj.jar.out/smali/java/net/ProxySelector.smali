.class public abstract Ljava/net/ProxySelector;
.super Ljava/lang/Object;
.source "ProxySelector.java"


# static fields
.field private static theProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    :try_start_0
    const-string/jumbo v2, "sun.net.spi.DefaultProxySelector"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    const-class v2, Ljava/net/ProxySelector;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/ProxySelector;

    sput-object v2, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    sput-object v3, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljava/net/ProxySelector;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 93
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lsun/security/util/SecurityConstants;->GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 96
    :cond_0
    sget-object v1, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    return-object v1
.end method

.method public static setDefault(Ljava/net/ProxySelector;)V
    .locals 2
    .param p0, "ps"    # Ljava/net/ProxySelector;

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 116
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lsun/security/util/SecurityConstants;->SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 119
    :cond_0
    sput-object p0, Ljava/net/ProxySelector;->theProxySelector:Ljava/net/ProxySelector;

    .line 114
    return-void
.end method


# virtual methods
.method public abstract connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
.end method

.method public abstract select(Ljava/net/URI;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end method
