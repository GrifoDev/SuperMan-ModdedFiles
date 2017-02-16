.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private connected:Z

.field private created:Z

.field impl:Ljava/net/SocketImpl;

.field private oldImpl:Z

.field private shutIn:Z

.field private shutOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1596
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 87
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 210
    if-eqz p1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 212
    :goto_0
    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    .line 210
    invoke-direct {p0, v1, v0, v2}, Ljava/net/Socket;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V

    .line 208
    return-void

    .line 211
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    if-eqz p1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 284
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 282
    invoke-direct {p0, v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V

    .line 281
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 367
    if-eqz p1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 369
    :goto_0
    check-cast v0, Ljava/net/SocketAddress;

    .line 367
    invoke-direct {p0, v1, v0, p3}, Ljava/net/Socket;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V

    .line 366
    return-void

    .line 368
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 243
    if-eqz p1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 244
    :goto_0
    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    .line 243
    invoke-direct {p0, v1, v0, v2}, Ljava/net/Socket;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V

    .line 242
    return-void

    :cond_0
    move-object v1, v0

    .line 243
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 321
    if-eqz p1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 322
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 321
    invoke-direct {p0, v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 410
    if-eqz p1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 411
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 410
    invoke-direct {p0, v0, v1, p3}, Ljava/net/Socket;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V

    .line 409
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 6
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid Proxy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v4, :cond_4

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 124
    .local v2, "p":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_6

    .line 125
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 126
    .local v3, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 127
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    const-string/jumbo v5, "Socket"

    invoke-direct {p0, v4, v5}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 130
    :cond_1
    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 133
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 139
    :cond_3
    :goto_1
    new-instance v4, Ljava/net/SocksSocketImpl;

    invoke-direct {v4, v2}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 140
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 118
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :goto_2
    return-void

    .line 123
    .end local v2    # "p":Ljava/net/Proxy;
    :cond_4
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v2

    goto :goto_0

    .line 136
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v2    # "p":Ljava/net/Proxy;
    .restart local v3    # "security":Ljava/lang/SecurityManager;
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 136
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1

    .line 142
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_6
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v2, v4, :cond_8

    .line 143
    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v4, :cond_7

    .line 144
    new-instance v4, Ljava/net/PlainSocketImpl;

    invoke-direct {v4}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 145
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    goto :goto_2

    .line 147
    :cond_7
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    goto :goto_2

    .line 149
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid Proxy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private constructor <init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Z)V
    .locals 3
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "localAddr"    # Ljava/net/SocketAddress;
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v2, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v2, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v2, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v2, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v2, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v2, p0, Ljava/net/Socket;->oldImpl:Z

    .line 416
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 423
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3}, Ljava/net/Socket;->createImpl(Z)V

    .line 424
    if-eqz p2, :cond_1

    .line 425
    invoke-virtual {p0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 426
    :cond_1
    if-eqz p1, :cond_2

    .line 427
    invoke-virtual {p0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_2
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->close()V

    .line 434
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 435
    throw v0
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 165
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 168
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 164
    :cond_0
    return-void
.end method

.method private checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    return-void

    .line 642
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_0
    if-nez v0, :cond_2

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 638
    :cond_2
    return-void
.end method

.method private checkOldImpl()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_0

    .line 460
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/net/Socket$1;

    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    .line 464
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 458
    return-void
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/Socket;

    monitor-enter v2

    .line 1625
    :try_start_0
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_0

    .line 1626
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1628
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1629
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1630
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1632
    :cond_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1623
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 620
    :cond_0
    iget-boolean v3, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Already bound"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 623
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, p1

    .line 625
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 626
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 627
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Unresolved address"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unsupported address type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 628
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4
    if-nez v1, :cond_5

    .line 629
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 631
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 632
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 633
    .local v2, "port":I
    const-string/jumbo v3, "bind"

    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 635
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/net/Socket;->bound:Z

    .line 617
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1440
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1441
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1442
    return-void

    .line 1443
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 1445
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1439
    return-void

    .line 1440
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 534
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 7
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 556
    if-nez p1, :cond_0

    .line 557
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "connect: The address can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    :cond_0
    if-gez p2, :cond_1

    .line 560
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "connect: timeout can\'t be negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 562
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_2
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 566
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 568
    :cond_3
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_4

    .line 569
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object v1, p1

    .line 571
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 572
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 573
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 574
    .local v2, "port":I
    const-string/jumbo v4, "connect"

    invoke-direct {p0, v0, v4}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 577
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5

    .line 578
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 579
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 583
    :cond_5
    :goto_0
    iget-boolean v4, p0, Ljava/net/Socket;->created:Z

    if-nez v4, :cond_6

    .line 584
    invoke-virtual {p0, v6}, Ljava/net/Socket;->createImpl(Z)V

    .line 585
    :cond_6
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_8

    .line 586
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 594
    :goto_1
    iput-boolean v6, p0, Ljava/net/Socket;->connected:Z

    .line 599
    iput-boolean v6, p0, Ljava/net/Socket;->bound:Z

    .line 555
    return-void

    .line 581
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    .line 587
    :cond_8
    if-nez p2, :cond_a

    .line 588
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 589
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    goto :goto_1

    .line 591
    :cond_9
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    goto :goto_1

    .line 593
    :cond_a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "SocketImpl.connect(addr, timeout)"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method createImpl(Z)V
    .locals 3
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    .line 449
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 451
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/SocketImpl;->create(Z)V

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 516
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    .line 518
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    return-object v2

    .line 682
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 683
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/net/SocketException;
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 881
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 882
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 883
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket input is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 884
    :cond_2
    move-object v2, p0

    .line 885
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 888
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$2;

    invoke-direct {v3, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    .line 887
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    .line 893
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    .line 698
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v5

    if-nez v5, :cond_0

    .line 699
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    return-object v5

    .line 700
    :cond_0
    const/4 v3, 0x0

    .line 702
    .local v3, "in":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/InetAddress;

    move-object v3, v0

    .line 704
    .local v3, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 705
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 706
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_1

    .line 707
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 709
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 710
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 717
    :cond_2
    :goto_0
    return-object v3

    .line 714
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0

    .line 712
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 713
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 752
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    return v2

    .line 755
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 756
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    const/4 v0, 0x0

    return-object v0

    .line 808
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 920
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 921
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 923
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket output is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 924
    :cond_2
    move-object v2, p0

    .line 925
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 928
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$3;

    invoke-direct {v3, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    .line 927
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    .line 933
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    const/4 v1, 0x0

    return v1

    .line 734
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 735
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/net/SocketException;
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1249
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1251
    :cond_0
    const/4 v1, 0x0

    .line 1252
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1253
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1254
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1256
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 780
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 782
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1177
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1178
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1179
    :cond_0
    const/4 v1, 0x0

    .line 1180
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1181
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1182
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1184
    return v1
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1017
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1018
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1019
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1021
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1121
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1125
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1126
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1128
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1359
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1566
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 1579
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 1590
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    return v0
.end method

.method final postAccept()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 652
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 653
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 650
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Urgent data not supported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1035
    return-void
.end method

.method setBound()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 660
    return-void
.end method

.method setConnected()V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 664
    return-void
.end method

.method setCreated()V
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 656
    return-void
.end method

.method setImpl()V
    .locals 1

    .prologue
    .line 494
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_1

    .line 495
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 496
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 502
    :goto_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 493
    :cond_0
    return-void

    .line 500
    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1268
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1065
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 1675
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1228
    if-gtz p1, :cond_0

    .line 1229
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1231
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1227
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1396
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1156
    if-gtz p1, :cond_0

    .line 1157
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1159
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1155
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 988
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_0
    if-nez p1, :cond_1

    .line 991
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 987
    :goto_0
    return-void

    .line 993
    :cond_1
    if-gez p2, :cond_2

    .line 994
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid value for SO_LINGER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_2
    const v0, 0xffff

    if-le p2, v0, :cond_3

    .line 997
    const p2, 0xffff

    .line 998
    :cond_3
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1103
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1105
    :cond_0
    if-gez p1, :cond_1

    .line 1106
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1102
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 952
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1335
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1334
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1470
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1471
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 1466
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1498
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1501
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1503
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 1505
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 1496
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1516
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Socket[address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1518
    const-string/jumbo v2, ",port="

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1518
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getPort()I

    move-result v2

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1519
    const-string/jumbo v2, ",localPort="

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1519
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1519
    const-string/jumbo v2, "]"

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1520
    :catch_0
    move-exception v0

    .line 1522
    :cond_0
    const-string/jumbo v1, "Socket[unconnected]"

    return-object v1
.end method
