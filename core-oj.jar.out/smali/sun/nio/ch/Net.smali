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

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v3, Lsun/nio/ch/Net$1;

    invoke-direct {v3}, Lsun/nio/ch/Net$1;-><init>()V

    sput-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    .line 61
    invoke-static {}, Lsun/nio/ch/Net;->isExclusiveBindAvailable()I

    move-result v0

    .line 62
    .local v0, "availLevel":I
    if-ltz v0, :cond_3

    .line 65
    new-instance v3, Lsun/nio/ch/Net$2;

    invoke-direct {v3}, Lsun/nio/ch/Net$2;-><init>()V

    .line 64
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "exclBindProp":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    .line 87
    .end local v1    # "exclBindProp":Ljava/lang/String;
    :goto_1
    sput-boolean v4, Lsun/nio/ch/Net;->checkedIPv6:Z

    .line 40
    return-void

    .line 74
    .restart local v1    # "exclBindProp":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 75
    :cond_1
    if-ne v0, v2, :cond_2

    .line 76
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_1

    .line 78
    :cond_2
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_1

    .line 81
    .end local v1    # "exclBindProp":Ljava/lang/String;
    :cond_3
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "interf"    # Ljava/net/NetworkInterface;

    .prologue
    .line 259
    new-instance v0, Lsun/nio/ch/Net$4;

    invoke-direct {v0, p0}, Lsun/nio/ch/Net$4;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method static asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .prologue
    .line 142
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0

    .line 144
    :cond_0
    check-cast p0, Ljava/net/InetSocketAddress;

    .end local p0    # "sa":Ljava/net/SocketAddress;
    return-object p0
.end method

.method static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 444
    return-void
.end method

.method static bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 454
    .local v0, "preferIPv6":Z
    :goto_0
    sget-boolean v1, Lsun/nio/ch/Net;->exclusiveBind:Z

    invoke-static {p1, v0, v1, p2, p3}, Lsun/nio/ch/Net;->bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V

    .line 450
    return-void

    .line 453
    .end local v0    # "preferIPv6":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_0

    .line 452
    .end local v0    # "preferIPv6":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static block6(Ljava/io/FileDescriptor;[BI[B)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
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

    .prologue
    .line 112
    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native canIPv6SocketJoinIPv4Group0()Z
.end method

.method static canJoin6WithIPv4Group()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native canJoin6WithIPv4Group0()Z
.end method

.method static checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sa == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    instance-of v2, p0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_1

    .line 131
    new-instance v2, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v2}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v2

    :cond_1
    move-object v1, p0

    .line 132
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 133
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    new-instance v2, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v2}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v2

    .line 135
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 136
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-nez v2, :cond_3

    instance-of v2, v0, Ljava/net/Inet6Address;

    :goto_0
    if-nez v2, :cond_4

    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid address type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 138
    :cond_4
    return-object v1
.end method

.method static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "remote"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method static connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 2
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "remote"    # Ljava/net/InetAddress;
    .param p3, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 475
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 477
    .local v0, "preferIPv6":Z
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    .line 541
    return-void
.end method

.method static drop6(Ljava/io/FileDescriptor;[BI[B)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    .line 584
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
    .param p0, "port"    # I

    .prologue
    .line 250
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static getRevealLocalAddress()Z
    .locals 2

    .prologue
    .line 230
    sget-boolean v1, Lsun/nio/ch/Net;->propRevealLocalAddress:Z

    if-nez v1, :cond_0

    .line 234
    :try_start_0
    new-instance v1, Lsun/nio/ch/Net$3;

    invoke-direct {v1}, Lsun/nio/ch/Net$3;-><init>()V

    .line 233
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lsun/nio/ch/Net;->revealLocalAddress:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lsun/nio/ch/Net;->propRevealLocalAddress:Z

    .line 246
    :cond_0
    sget-boolean v1, Lsun/nio/ch/Net;->revealLocalAddress:Z

    return v1

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 206
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 207
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz p0, :cond_0

    if-nez v1, :cond_1

    .line 208
    :cond_0
    return-object p0

    .line 210
    :cond_1
    invoke-static {}, Lsun/nio/ch/Net;->getRevealLocalAddress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_2
    :goto_0
    return-object p0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v2}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object p0

    goto :goto_0
.end method

.method static getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 224
    invoke-static {}, Lsun/nio/ch/Net;->getRevealLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object p0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
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

    .prologue
    .line 390
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v2

    .line 393
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Integer;

    if-eq v2, v4, :cond_0

    const-class v4, Ljava/lang/Boolean;

    if-eq v2, v4, :cond_0

    .line 394
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Should not reach here"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 397
    :cond_0
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v0

    .line 398
    .local v0, "key":Lsun/nio/ch/OptionKey;
    if-nez v0, :cond_1

    .line 399
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Option not found"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 401
    :cond_1
    sget-object v4, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    .line 402
    .local v1, "mayNeedConversion":Z
    :goto_0
    invoke-virtual {v0}, Lsun/nio/ch/OptionKey;->level()I

    move-result v4

    invoke-virtual {v0}, Lsun/nio/ch/OptionKey;->name()I

    move-result v5

    invoke-static {p0, v1, v4, v5}, Lsun/nio/ch/Net;->getIntOption0(Ljava/io/FileDescriptor;ZII)I

    move-result v3

    .line 404
    .local v3, "value":I
    const-class v4, Ljava/lang/Integer;

    if-ne v2, v4, :cond_3

    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 401
    .end local v1    # "mayNeedConversion":Z
    .end local v3    # "value":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "mayNeedConversion":Z
    goto :goto_0

    .line 407
    .restart local v3    # "value":I
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
    .param p0, "ia"    # Ljava/net/InetAddress;

    .prologue
    .line 277
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 279
    .local v0, "addr":[B
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 280
    .local v1, "address":I
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 281
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 282
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 283
    return v1

    .line 285
    .end local v0    # "addr":[B
    .end local v1    # "address":I
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static inet4FromInt(I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "address"    # I

    .prologue
    .line 293
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 294
    .local v0, "addr":[B
    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 295
    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 296
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 297
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 299
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "uhe":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static inet6AsByteArray(Ljava/net/InetAddress;)[B
    .locals 4
    .param p0, "ia"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, -0x1

    .line 309
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    return-object v2

    .line 314
    :cond_0
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 316
    .local v1, "ip4address":[B
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 317
    .local v0, "address":[B
    const/16 v2, 0xa

    aput-byte v3, v0, v2

    .line 318
    const/16 v2, 0xb

    aput-byte v3, v0, v2

    .line 319
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    .line 320
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    .line 321
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    .line 322
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    aput-byte v2, v0, v3

    .line 323
    return-object v0

    .line 326
    .end local v0    # "address":[B
    .end local v1    # "ip4address":[B
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

    .prologue
    .line 94
    sget-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available0()Z

    move-result v0

    sput-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    .line 98
    :cond_0
    sget-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    return v0
.end method

.method private static native isIPv6Available0()Z
.end method

.method static join4(Ljava/io/FileDescriptor;III)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static join6(Ljava/io/FileDescriptor;[BI[B)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
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
    .param p0, "stream"    # Z

    .prologue
    .line 437
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
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .param p3, "value"    # Ljava/lang/Object;
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

    .prologue
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    const v8, 0xffff

    const/16 v7, 0xff

    .line 335
    if-nez p3, :cond_0

    .line 336
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid option value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 339
    :cond_0
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v5

    .line 340
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Integer;

    if-eq v5, v6, :cond_1

    const-class v6, Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    .line 341
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Should not reach here"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 344
    :cond_1
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-eq p2, v6, :cond_2

    .line 345
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_3

    :cond_2
    move-object v6, p3

    .line 347
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 348
    .local v2, "i":I
    if-gez v2, :cond_3

    .line 349
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid send/receive buffer size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 351
    .end local v2    # "i":I
    :cond_3
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_5

    move-object v6, p3

    .line 352
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 353
    .restart local v2    # "i":I
    if-gez v2, :cond_4

    .line 354
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 355
    :cond_4
    if-le v2, v8, :cond_5

    .line 356
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 358
    .end local v2    # "i":I
    :cond_5
    sget-object v6, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_7

    move-object v6, p3

    .line 359
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 360
    .restart local v2    # "i":I
    if-ltz v2, :cond_6

    if-le v2, v7, :cond_7

    .line 361
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid IP_TOS value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 363
    .end local v2    # "i":I
    :cond_7
    sget-object v6, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p2, v6, :cond_9

    move-object v6, p3

    .line 364
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 365
    .restart local v2    # "i":I
    if-ltz v2, :cond_8

    if-le v2, v7, :cond_9

    .line 366
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid TTL/hop value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    .end local v2    # "i":I
    :cond_9
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v3

    .line 371
    .local v3, "key":Lsun/nio/ch/OptionKey;
    if-nez v3, :cond_a

    .line 372
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Option not found"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 375
    :cond_a
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_b

    .line 376
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    .local v0, "arg":I
    :goto_0
    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v6, :cond_d

    const/4 v4, 0x1

    .line 383
    .local v4, "mayNeedConversion":Z
    :goto_1
    invoke-virtual {v3}, Lsun/nio/ch/OptionKey;->level()I

    move-result v6

    invoke-virtual {v3}, Lsun/nio/ch/OptionKey;->name()I

    move-result v7

    invoke-static {p0, v4, v6, v7, v0}, Lsun/nio/ch/Net;->setIntOption0(Ljava/io/FileDescriptor;ZIII)V

    .line 333
    return-void

    .line 378
    .end local v0    # "arg":I
    .end local v4    # "mayNeedConversion":Z
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_b
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 379
    .local v1, "b":Z
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .restart local v0    # "arg":I
    goto :goto_0

    .end local v0    # "arg":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "arg":I
    goto :goto_0

    .line 382
    .end local v1    # "b":Z
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "mayNeedConversion":Z
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
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v2, :cond_0

    const/4 v0, 0x1

    .line 433
    .local v0, "preferIPv6":Z
    :goto_0
    invoke-static {v0, p1, v1}, Lsun/nio/ch/Net;->socket0(ZZZ)I

    move-result v1

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1

    .end local v0    # "preferIPv6":Z
    :cond_0
    move v0, v1

    .line 432
    goto :goto_0

    :cond_1
    move v0, v1

    .line 431
    goto :goto_0
.end method

.method static socket(Z)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native socket0(ZZZ)I
.end method

.method static translateException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V

    .line 197
    return-void
.end method

.method static translateException(Ljava/lang/Exception;Z)V
    .locals 1
    .param p0, "x"    # Ljava/lang/Exception;
    .param p1, "unknownHostForUnresolved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 185
    check-cast p0, Ljava/io/IOException;

    .end local p0    # "x":Ljava/lang/Exception;
    throw p0

    .line 188
    .restart local p0    # "x":Ljava/lang/Exception;
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    instance-of v0, p0, Ljava/nio/channels/UnresolvedAddressException;

    .line 188
    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    .line 193
    :cond_1
    invoke-static {p0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 182
    return-void
.end method

.method static translateToSocketException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 150
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    .line 151
    check-cast p0, Ljava/net/SocketException;

    .end local p0    # "x":Ljava/lang/Exception;
    throw p0

    .line 152
    .restart local p0    # "x":Ljava/lang/Exception;
    :cond_0
    move-object v0, p0

    .line 153
    .local v0, "nx":Ljava/lang/Exception;
    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_3

    .line 154
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-eq v0, p0, :cond_2

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 172
    :cond_2
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_9

    .line 173
    check-cast v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    throw v0

    .line 155
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_3
    instance-of v1, p0, Ljava/nio/channels/NotYetConnectedException;

    if-eqz v1, :cond_4

    .line 156
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    .line 157
    :cond_4
    instance-of v1, p0, Ljava/nio/channels/AlreadyBoundException;

    if-eqz v1, :cond_5

    .line 158
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    .line 159
    :cond_5
    instance-of v1, p0, Ljava/nio/channels/NotYetBoundException;

    if-eqz v1, :cond_6

    .line 160
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is not bound yet"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    .line 161
    :cond_6
    instance-of v1, p0, Ljava/nio/channels/UnsupportedAddressTypeException;

    if-eqz v1, :cond_7

    .line 162
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    .line 163
    :cond_7
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v1, :cond_8

    .line 164
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Unresolved address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    .line 165
    :cond_8
    instance-of v1, p0, Ljava/nio/channels/AlreadyConnectedException;

    if-eqz v1, :cond_1

    .line 167
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    .line 174
    :cond_9
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_a

    .line 175
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "nx":Ljava/lang/Exception;
    throw v0

    .line 177
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_a
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "Untranslated exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static unblock4(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    .line 562
    return-void
.end method

.method static unblock6(Ljava/io/FileDescriptor;[BI[B)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    .line 605
    return-void
.end method

.method static useExclusiveBind()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    return v0
.end method
