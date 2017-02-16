.class public final Lsun/net/ApplicationProxy;
.super Ljava/net/Proxy;
.source "ApplicationProxy.java"


# direct methods
.method private constructor <init>(Ljava/net/Proxy;)V
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 36
    return-void
.end method

.method public static create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;
    .locals 1
    .param p0, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 41
    new-instance v0, Lsun/net/ApplicationProxy;

    invoke-direct {v0, p0}, Lsun/net/ApplicationProxy;-><init>(Ljava/net/Proxy;)V

    return-object v0
.end method
