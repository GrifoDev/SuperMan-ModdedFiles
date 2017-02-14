.class public final Lsun/net/SocksProxy;
.super Ljava/net/Proxy;
.source "SocksProxy.java"


# instance fields
.field private final version:I


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;I)V
    .locals 1

    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    invoke-direct {p0, v0, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput p2, p0, Lsun/net/SocksProxy;->version:I

    return-void
.end method

.method public static create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;
    .locals 1

    new-instance v0, Lsun/net/SocksProxy;

    invoke-direct {v0, p0, p1}, Lsun/net/SocksProxy;-><init>(Ljava/net/SocketAddress;I)V

    return-object v0
.end method


# virtual methods
.method public protocolVersion()I
    .locals 1

    iget v0, p0, Lsun/net/SocksProxy;->version:I

    return v0
.end method
