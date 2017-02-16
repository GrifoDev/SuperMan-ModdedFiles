.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final ST_CONNECTED:I = 0x1

.field static final ST_CONNECTED_NO_IMPL:I = 0x2

.field static final ST_NOT_CONNECTED:I

.field static factory:Ljava/net/DatagramSocketImplFactory;

.field static implClass:Ljava/lang/Class;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field connectState:I

.field connectedAddress:Ljava/net/InetAddress;

.field connectedPort:I

.field private created:Z

.field impl:Ljava/net/DatagramSocketImpl;

.field oldImpl:Z

.field private pendingConnectException:Ljava/net/SocketException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    sput-object v0, Ljava/net/DatagramSocket;->implClass:Ljava/lang/Class;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 79
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 90
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 102
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 199
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 200
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 197
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 269
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 297
    return-void
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .locals 3
    .param p1, "impl"    # Ljava/net/DatagramSocketImpl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 79
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 90
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 102
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 107
    iput-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 215
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    .line 79
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    .line 90
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    .line 102
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    .line 107
    iput-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 243
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 241
    :cond_0
    return-void
.end method

.method private checkOldImpl()V
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v1, :cond_0

    .line 303
    return-void

    .line 308
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket$1;

    invoke-direct {v1, p0}, Ljava/net/DatagramSocket$1;-><init>(Ljava/net/DatagramSocket;)V

    .line 307
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    goto :goto_0
.end method

.method private declared-synchronized connectInternal(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 123
    if-ltz p2, :cond_0

    const v1, 0xffff

    if-le p2, v1, :cond_1

    .line 124
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 126
    :cond_1
    if-nez p1, :cond_2

    .line 127
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connect: null address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    const-string/jumbo v1, "connect"

    invoke-virtual {p0, p1, v1}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    .line 131
    return-void

    .line 132
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 133
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 142
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 146
    :cond_5
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 147
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 151
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    instance-of v1, v1, Ljava/net/AbstractPlainDatagramSocketImpl;

    if-eqz v1, :cond_8

    .line 152
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    check-cast v1, Ljava/net/AbstractPlainDatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->nativeConnectDisabled()Z

    move-result v1

    .line 151
    if-eqz v1, :cond_8

    .line 153
    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 122
    return-void

    .line 137
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V

    goto :goto_0

    .line 165
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 168
    const/4 v1, 0x1

    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/DatagramSocket;

    monitor-enter v2

    .line 1284
    :try_start_0
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_0

    .line 1285
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

    .line 1287
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1288
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1291
    :cond_1
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1282
    return-void
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/net/SocketAddress;)V
    .locals 9
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 372
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "Socket is closed"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 373
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "already bound"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 375
    :cond_1
    if-nez p1, :cond_2

    .line 376
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    .end local p1    # "addr":Ljava/net/SocketAddress;
    .local v1, "addr":Ljava/net/SocketAddress;
    move-object p1, v1

    .line 377
    .end local v1    # "addr":Ljava/net/SocketAddress;
    .restart local p1    # "addr":Ljava/net/SocketAddress;
    :cond_2
    instance-of v7, p1, Ljava/net/InetSocketAddress;

    if-nez v7, :cond_3

    .line 378
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unsupported address type!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 379
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 380
    .local v3, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 381
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "Unresolved address"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 382
    :cond_4
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 383
    .local v4, "iaddr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 384
    .local v5, "port":I
    const-string/jumbo v7, "bind"

    invoke-virtual {p0, v4, v7}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 386
    .local v6, "sec":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_5

    .line 387
    invoke-virtual {v6, v5}, Ljava/lang/SecurityManager;->checkListen(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, p0, Ljava/net/DatagramSocket;->bound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 370
    return-void

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Ljava/net/SocketException;
    :try_start_4
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/DatagramSocketImpl;->close()V

    .line 393
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_0
    if-nez v0, :cond_2

    .line 403
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

    .line 402
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1209
    iget-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1210
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1211
    return-void

    .line 1212
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    .line 1213
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1208
    return-void

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 456
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 461
    .local v0, "se":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Address can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_0
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 492
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 493
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 494
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V

    .line 488
    return-void
.end method

.method createImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    if-nez v2, :cond_0

    .line 325
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v2, :cond_1

    .line 326
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v2}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    iput-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 327
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    .line 336
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2}, Ljava/net/DatagramSocketImpl;->create()V

    .line 337
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    .line 323
    return-void

    .line 329
    :cond_1
    instance-of v2, p0, Ljava/net/MulticastSocket;

    if-eqz v2, :cond_2

    move v0, v1

    .line 330
    .local v0, "isMulticast":Z
    :goto_1
    invoke-static {v0}, Ljava/net/DefaultDatagramSocketImplFactory;->createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;

    move-result-object v2

    iput-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 332
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    goto :goto_0

    .line 329
    .end local v0    # "isMulticast":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    .line 507
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 508
    return-void

    .line 509
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 510
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 512
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 505
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBroadcast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1123
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
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

    .line 1125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getImpl()Ljava/net/DatagramSocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 350
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    .line 352
    :cond_0
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 834
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    return-object v5

    .line 836
    :cond_0
    const/4 v2, 0x0

    .line 838
    .local v2, "in":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/InetAddress;

    move-object v2, v0

    .line 839
    .local v2, "in":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 840
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 842
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 843
    .local v3, "s":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_2

    .line 844
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v3    # "s":Ljava/lang/SecurityManager;
    :cond_2
    :goto_0
    return-object v2

    .line 846
    .end local v2    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .restart local v2    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 2

    .prologue
    .line 861
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const/4 v1, -0x1

    return v1

    .line 864
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    return-object v1

    .line 610
    :cond_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    return-object v1

    .line 612
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    return v0
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

    .line 1021
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
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

    .line 1023
    :cond_0
    const/4 v1, 0x0

    .line 1024
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1025
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1026
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1028
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 591
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public declared-synchronized getReuseAddress()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1085
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
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

    .line 1087
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1088
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
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

    .line 963
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
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

    .line 965
    :cond_0
    const/4 v1, 0x0

    .line 966
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 967
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 968
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 970
    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 901
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
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

    .line 903
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit p0

    .line 904
    return v3

    .line 905
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 907
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 908
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    monitor-exit p0

    .line 910
    return v3
.end method

.method public declared-synchronized getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1191
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
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

    .line 1193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_0
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1224
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 543
    iget v1, p0, Ljava/net/DatagramSocket;->connectState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .locals 12
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 730
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 731
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v9

    if-nez v9, :cond_0

    .line 732
    new-instance v9, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v9}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 735
    :cond_0
    iget-object v9, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-eqz v9, :cond_1

    .line 736
    new-instance v9, Ljava/net/SocketException;

    const-string/jumbo v10, "Pending connect failure"

    iget-object v11, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v9, v10, v11}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p1

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 740
    :cond_1
    :try_start_3
    iget v9, p0, Ljava/net/DatagramSocket;->connectState:I

    if-nez v9, :cond_2

    .line 742
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 743
    .local v6, "security":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_2

    .line 745
    :goto_0
    const/4 v1, 0x0

    .line 746
    .local v1, "peekAd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 748
    .local v4, "peekPort":I
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v9, :cond_4

    .line 750
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v3, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 751
    .local v3, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v4

    .line 752
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 759
    .end local v3    # "peekPacket":Ljava/net/DatagramPacket;
    .local v1, "peekAd":Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual {v6, v1, v4}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 780
    .end local v1    # "peekAd":Ljava/lang/String;
    .end local v4    # "peekPort":I
    .end local v6    # "security":Ljava/lang/SecurityManager;
    :cond_2
    :try_start_5
    iget v9, p0, Ljava/net/DatagramSocket;->connectState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 784
    const/4 v7, 0x0

    .line 785
    .local v7, "stop":Z
    :goto_2
    if-nez v7, :cond_7

    .line 786
    const/4 v2, 0x0

    .line 787
    .local v2, "peekAddress":Ljava/net/InetAddress;
    const/4 v4, -0x1

    .line 789
    .restart local v4    # "peekPort":I
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-nez v9, :cond_5

    .line 791
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v3, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 792
    .restart local v3    # "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v4

    .line 793
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 799
    .end local v3    # "peekPacket":Ljava/net/DatagramPacket;
    .local v2, "peekAddress":Ljava/net/InetAddress;
    :goto_3
    iget-object v9, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v9, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 800
    iget v9, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-eq v9, v4, :cond_6

    .line 802
    :cond_3
    new-instance v8, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 803
    .local v8, "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    goto :goto_2

    .line 754
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    .end local v7    # "stop":Z
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v1, "peekAd":Ljava/lang/String;
    .restart local v6    # "security":Ljava/lang/SecurityManager;
    :cond_4
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 755
    .local v0, "adr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v4

    .line 756
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .local v1, "peekAd":Ljava/lang/String;
    goto :goto_1

    .line 763
    .end local v0    # "adr":Ljava/net/InetAddress;
    :catch_0
    move-exception v5

    .line 766
    .local v5, "se":Ljava/lang/SecurityException;
    new-instance v8, Ljava/net/DatagramPacket;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 767
    .restart local v8    # "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    goto/16 :goto_0

    .line 796
    .end local v1    # "peekAd":Ljava/lang/String;
    .end local v5    # "se":Ljava/lang/SecurityException;
    .end local v6    # "security":Ljava/lang/SecurityManager;
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v2, "peekAddress":Ljava/net/InetAddress;
    .restart local v7    # "stop":Z
    :cond_5
    new-instance v2, Ljava/net/InetAddress;

    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    invoke-direct {v2}, Ljava/net/InetAddress;-><init>()V

    .line 797
    .local v2, "peekAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    move-result v4

    goto :goto_3

    .line 805
    :cond_6
    const/4 v7, 0x1

    goto :goto_2

    .line 811
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    .end local v4    # "peekPort":I
    .end local v7    # "stop":Z
    :cond_7
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 729
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 4
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "packetAddress":Ljava/net/InetAddress;
    monitor-enter p1

    .line 658
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    :catchall_0
    move-exception v2

    monitor-exit p1

    throw v2

    .line 660
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    const-string/jumbo v3, "send"

    invoke-virtual {p0, v2, v3}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 661
    iget v2, p0, Ljava/net/DatagramSocket;->connectState:I

    if-nez v2, :cond_4

    .line 663
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 669
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 670
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 671
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 691
    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_2

    .line 692
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 694
    :cond_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    .line 655
    return-void

    .line 673
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    .line 673
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    .line 679
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_4
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 680
    .local v0, "packetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_5

    .line 681
    iget-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 682
    iget v2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0

    .line 683
    :cond_5
    iget-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 684
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    iget v3, p0, Ljava/net/DatagramSocket;->connectedPort:I

    if-eq v2, v3, :cond_1

    .line 685
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "connected address and packet address differ"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setBroadcast(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1109
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
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

    .line 1111
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1108
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 6
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1309
    if-nez p1, :cond_0

    .line 1310
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "netInterface == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v2, v2, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    return-void

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
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

    .line 1003
    if-gtz p1, :cond_0

    .line 1004
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

    .line 1006
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1002
    return-void
.end method

.method public declared-synchronized setReuseAddress(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
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

    .line 1069
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    if-eqz v0, :cond_2

    .line 1070
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    .line 1065
    return-void

    .line 1070
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
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

    .line 945
    if-gtz p1, :cond_0

    .line 946
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

    .line 948
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 944
    return-void
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

    .line 886
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
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

    .line 888
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 885
    return-void
.end method

.method public declared-synchronized setTrafficClass(I)V
    .locals 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1166
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1167
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1169
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1165
    return-void
.end method
