.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private created:Z

.field private impl:Ljava/net/SocketImpl;

.field private oldImpl:Z


# direct methods
.method static synthetic -get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;
    .locals 1

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 87
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 127
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 180
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v3, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v3, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v3, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v3, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 230
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 231
    if-ltz p1, :cond_0

    const v2, 0xffff

    if-le p1, v2, :cond_1

    .line 232
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Port value out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_1
    const/4 v2, 0x1

    if-ge p2, v2, :cond_2

    .line 235
    const/16 p2, 0x32

    .line 237
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v2, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 243
    throw v0

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 240
    throw v1
.end method

.method constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/SocketImpl;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    .line 57
    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    .line 58
    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 69
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 76
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 77
    invoke-virtual {p1, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 75
    return-void
.end method

.method private checkOldImpl()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    .line 264
    return-void

    .line 269
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket$1;

    invoke-direct {v1, p0}, Ljava/net/ServerSocket$1;-><init>(Ljava/net/ServerSocket;)V

    .line 268
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    goto :goto_0
.end method

.method private setImpl()V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 286
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOldImpl()V

    .line 292
    :goto_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 283
    :cond_0
    return-void

    .line 290
    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    goto :goto_0
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/ServerSocket;

    monitor-enter v2

    .line 778
    :try_start_0
    sget-object v1, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_0

    .line 779
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

    .line 781
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 782
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 785
    :cond_1
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 777
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not bound yet"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_1
    new-instance v0, Ljava/net/Socket;

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketImpl;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 499
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 500
    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 330
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 8
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 360
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    :cond_0
    iget-boolean v4, p0, Ljava/net/ServerSocket;->oldImpl:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Already bound"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    :cond_1
    if-nez p1, :cond_2

    .line 365
    new-instance p1, Ljava/net/InetSocketAddress;

    .end local p1    # "endpoint":Ljava/net/SocketAddress;
    invoke-direct {p1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 366
    .restart local p1    # "endpoint":Ljava/net/SocketAddress;
    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_3

    .line 367
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, p1

    .line 368
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 369
    .local v2, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 370
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Unresolved address"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    :cond_4
    if-ge p2, v5, :cond_5

    .line 372
    const/16 p2, 0x32

    .line 374
    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 375
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_6

    .line 376
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 377
    :cond_6
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 378
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V

    .line 379
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/ServerSocket;->bound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-void

    .line 383
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    .line 385
    throw v0

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/SecurityException;
    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    .line 382
    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 569
    return-void

    .line 570
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 572
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 566
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method createImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    .line 304
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 306
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V

    .line 307
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 257
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/net/ServerSocket;->createImpl()V

    .line 259
    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 400
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-nez v4, :cond_0

    .line 401
    return-object v6

    .line 403
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 404
    .local v2, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 405
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 406
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    return-object v2

    .line 410
    .end local v2    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4

    .line 412
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 417
    .local v1, "e":Ljava/net/SocketException;
    return-object v6
.end method

.method public getLocalPort()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 431
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    return v2

    .line 434
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 435
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
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

    .line 847
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
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

    .line 849
    :cond_0
    const/4 v1, 0x0

    .line 850
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 851
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 852
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 854
    return v1
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 650
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
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

    .line 652
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 655
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 657
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .locals 6
    .param p1, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v3, 0x0

    .line 522
    .local v3, "si":Ljava/net/SocketImpl;
    :try_start_0
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v4, :cond_1

    .line 523
    invoke-virtual {p1}, Ljava/net/Socket;->setImpl()V

    .line 527
    :goto_0
    iget-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 528
    .local v3, "si":Ljava/net/SocketImpl;
    const/4 v4, 0x0

    iput-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 529
    new-instance v4, Ljava/net/InetAddress;

    invoke-direct {v4}, Ljava/net/InetAddress;-><init>()V

    iput-object v4, v3, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 530
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v4, v3, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 531
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 533
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 534
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getPort()I

    move-result v5

    .line 535
    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 549
    :cond_0
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 550
    invoke-virtual {p1}, Ljava/net/Socket;->postAccept()V

    .line 519
    return-void

    .line 525
    .end local v2    # "security":Ljava/lang/SecurityManager;
    .local v3, "si":Ljava/net/SocketImpl;
    :cond_1
    :try_start_1
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 538
    .end local v3    # "si":Ljava/net/SocketImpl;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 540
    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    .line 541
    :cond_2
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 542
    throw v0

    .line 543
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v3, :cond_3

    .line 545
    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    .line 546
    :cond_3
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 547
    throw v1
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setBound()V
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 739
    return-void
.end method

.method setCreated()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 743
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 897
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

    .line 824
    if-gtz p1, :cond_0

    .line 825
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 827
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 823
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
    .line 698
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 697
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

    .line 636
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
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

    .line 638
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 635
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    const-string/jumbo v1, "ServerSocket[unbound]"

    return-object v1

    .line 728
    :cond_0
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 729
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 731
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 735
    .local v0, "in":Ljava/net/InetAddress;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServerSocket[addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, ",localport="

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, "]"

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 733
    .end local v0    # "in":Ljava/net/InetAddress;
    :cond_1
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method
