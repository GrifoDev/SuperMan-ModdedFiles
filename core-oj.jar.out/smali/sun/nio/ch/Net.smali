.class Lsun/nio/ch/Net;
.super Ljava/lang/Object;
.source "Net.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Net$1;,
        Lsun/nio/ch/Net$2;
    }
.end annotation


# static fields
.field public static final SHUT_RD:I = 0x0

.field public static final SHUT_RDWR:I = 0x2

.field public static final SHUT_WR:I = 0x1

.field static final UNSPEC:Ljava/net/ProtocolFamily;

.field private static volatile checkedIPv6:Z

.field private static final exclusiveBind:Z

.field private static volatile isIPv6Available:Z

.field private static volatile propRevealLocalAddress:Z

.field private static revealLocalAddress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v3, Lsun/nio/ch/Net$1;

    invoke-direct {v3}, Lsun/nio/ch/Net$1;-><init>()V

    sput-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {}, Lsun/nio/ch/Net;->isExclusiveBindAvailable()I

    move-result v0

    if-ltz v0, :cond_3

    new-instance v3, Lsun/nio/ch/Net$2;

    invoke-direct {v3}, Lsun/nio/ch/Net$2;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    :goto_1
    sput-boolean v4, Lsun/nio/ch/Net;->checkedIPv6:Z

    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_1

    :cond_2
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_1

    :cond_3
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
    .locals 1

    new-instance v0, Lsun/nio/ch/Net$4;

    invoke-direct {v0, p0}, Lsun/nio/ch/Net$4;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method static asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 1

    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0

    :cond_0
    check-cast p0, Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lsun/nio/ch/Net;->exclusiveBind:Z

    invoke-static {p1, v0, v1, p2, p3}, Lsun/nio/ch/Net;->bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static block4(Ljava/io/FileDescriptor;III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static block6(Ljava/io/FileDescriptor;[BI[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    move-result v0

    return v0
.end method

.method private static native blockOrUnblock4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static canIPv6SocketJoinIPv4Group()Z
    .locals 1

    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native canIPv6SocketJoinIPv4Group0()Z
.end method

.method static canJoin6WithIPv4Group()Z
    .locals 1

    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native canJoin6WithIPv4Group0()Z
.end method

.method static checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sa == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_1

    new-instance v2, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v2}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v2

    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v2}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v2

    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-nez v2, :cond_3

    instance-of v2, v0, Ljava/net/Inet6Address;

    :goto_0
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid address type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method static connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0, p1, p2, p3}, Lsun/nio/ch/Net;->connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v1

    return v1
.end method

.method private static native connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static drop4(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    return-void
.end method

.method static drop6(Ljava/io/FileDescriptor;[BI[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    return-void
.end method

.method private static native getIntOption0(Ljava/io/FileDescriptor;ZII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getInterface4(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getInterface6(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static getLoopbackAddress(I)Ljava/net/InetSocketAddress;
    .locals 2

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static getRevealLocalAddress()Z
    .locals 2

    sget-boolean v1, Lsun/nio/ch/Net;->propRevealLocalAddress:Z

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lsun/nio/ch/Net$3;

    invoke-direct {v1}, Lsun/nio/ch/Net$3;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lsun/nio/ch/Net;->revealLocalAddress:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lsun/nio/ch/Net;->propRevealLocalAddress:Z

    :cond_0
    sget-boolean v1, Lsun/nio/ch/Net;->revealLocalAddress:Z

    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz p0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-static {}, Lsun/nio/ch/Net;->getRevealLocalAddress()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v2}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object p0

    goto :goto_0
.end method

.method static getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/nio/ch/Net;->getRevealLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    if-eq v2, v4, :cond_0

    const-class v4, Ljava/lang/Boolean;

    if-eq v2, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Should not reach here"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_0
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Option not found"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_1
    sget-object v4, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lsun/nio/ch/OptionKey;->level()I

    move-result v4

    invoke-virtual {v0}, Lsun/nio/ch/OptionKey;->name()I

    move-result v5

    invoke-static {p0, v1, v4, v5}, Lsun/nio/ch/Net;->getIntOption0(Ljava/io/FileDescriptor;ZII)I

    move-result v3

    const-class v4, Ljava/lang/Integer;

    if-ne v2, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v4

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method static inet4AsInt(Ljava/net/InetAddress;)I
    .locals 4

    instance-of v2, p0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static inet4FromInt(I)Ljava/net/InetAddress;
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [B

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static inet6AsByteArray(Ljava/net/InetAddress;)[B
    .locals 4

    const/4 v3, -0x1

    instance-of v2, p0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    const/16 v2, 0x10

    new-array v0, v2, [B

    const/16 v2, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0xb

    aput-byte v3, v0, v2

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    aput-byte v2, v0, v3

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static native isExclusiveBindAvailable()I
.end method

.method static isIPv6Available()Z
    .locals 1

    sget-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    if-nez v0, :cond_0

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available0()Z

    move-result v0

    sput-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    :cond_0
    sget-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    return v0
.end method

.method private static native isIPv6Available0()Z
.end method

.method static join4(Ljava/io/FileDescriptor;III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static join6(Ljava/io/FileDescriptor;[BI[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    move-result v0

    return v0
.end method

.method private static native joinOrDrop4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Lsun/nio/ch/Net;->localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {p0}, Lsun/nio/ch/Net;->localPort(Ljava/io/FileDescriptor;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static native localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native localPort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static remoteAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Lsun/nio/ch/Net;->remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {p0}, Lsun/nio/ch/Net;->remotePort(Ljava/io/FileDescriptor;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static native remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native remotePort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static serverSocket(Z)Ljava/io/FileDescriptor;
    .locals 2

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lsun/nio/ch/Net;->socket0(ZZZ)I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native setIntOption0(Ljava/io/FileDescriptor;ZIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setInterface4(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setInterface6(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v8, 0xffff

    const/16 v7, 0xff

    if-nez p3, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid option value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    if-eq v5, v6, :cond_1

    const-class v6, Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Should not reach here"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_1
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-eq p2, v6, :cond_2

    sget-object v6, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_3

    :cond_2
    move-object v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid send/receive buffer size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_5

    move-object v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_4
    if-le v2, v8, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_5
    sget-object v6, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_7

    move-object v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_6

    if-le v2, v7, :cond_7

    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid IP_TOS value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    sget-object v6, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_9

    move-object v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_8

    if-le v2, v7, :cond_9

    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid TTL/hop value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v3

    if-nez v3, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Option not found"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_a
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_b

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v6, :cond_d

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3}, Lsun/nio/ch/OptionKey;->level()I

    move-result v6

    invoke-virtual {v3}, Lsun/nio/ch/OptionKey;->name()I

    move-result v7

    invoke-static {p0, v4, v6, v7, v0}, Lsun/nio/ch/Net;->setIntOption0(Ljava/io/FileDescriptor;ZIII)V

    return-void

    :cond_b
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    :cond_d
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static native shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1, v1}, Lsun/nio/ch/Net;->socket0(ZZZ)I

    move-result v1

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static socket(Z)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native socket0(ZZZ)I
.end method

.method static translateException(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V

    return-void
.end method

.method static translateException(Ljava/lang/Exception;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    return-void
.end method

.method static translateToSocketException(Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/net/SocketException;

    throw p0

    :cond_0
    move-object v0, p0

    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eq v0, p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/net/SocketException;

    throw v0

    :cond_3
    instance-of v1, p0, Ljava/nio/channels/NotYetConnectedException;

    if-eqz v1, :cond_4

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v1, p0, Ljava/nio/channels/AlreadyBoundException;

    if-eqz v1, :cond_5

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v1, p0, Ljava/nio/channels/NotYetBoundException;

    if-eqz v1, :cond_6

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not bound yet"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v1, p0, Ljava/nio/channels/UnsupportedAddressTypeException;

    if-eqz v1, :cond_7

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v1, :cond_8

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Unresolved address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    instance-of v1, p0, Ljava/nio/channels/AlreadyConnectedException;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_a
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "Untranslated exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static unblock4(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    return-void
.end method

.method static unblock6(Ljava/io/FileDescriptor;[BI[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    return-void
.end method

.method static useExclusiveBind()Z
    .locals 1

    sget-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    return v0
.end method
