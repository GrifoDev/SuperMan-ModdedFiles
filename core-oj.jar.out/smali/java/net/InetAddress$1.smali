.class final Ljava/net/InetAddress$1;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostByAddr([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p1}, Ljava/net/InetAddressImpl;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p1, p2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
