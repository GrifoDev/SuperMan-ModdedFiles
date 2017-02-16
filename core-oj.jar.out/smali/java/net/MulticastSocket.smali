.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private infAddress:Ljava/net/InetAddress;

.field private infLock:Ljava/lang/Object;

.field private interfaceSet:Z

.field private ttlLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 166
    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    .line 191
    iput-object v1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Socket is closed"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 490
    :cond_0
    iget-object v6, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v6

    .line 492
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 498
    .local v3, "ia":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    .line 499
    return-object v3

    .line 505
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    monitor-exit v6

    .line 506
    return-object v3

    .line 515
    :cond_2
    :try_start_2
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 516
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 517
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 518
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 519
    .local v0, "addr":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 520
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 528
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 529
    return-object v3

    .line 530
    .end local v1    # "addrs":Ljava/util/Enumeration;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v6

    .line 531
    return-object v3

    .line 490
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ia":Ljava/net/InetAddress;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getLoopbackMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 567
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 568
    .local v1, "niIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 569
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/net/InetAddress;

    .line 570
    .local v0, "addrs":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v4

    .line 571
    new-instance v2, Ljava/net/NetworkInterface;

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4, v0}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    return-object v2

    .line 573
    .end local v0    # "addrs":[Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v2

    return-object v2
.end method

.method public getTTL()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_0
    const-string/jumbo v2, "joinGroup"

    invoke-virtual {p0, p1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 301
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 305
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Not a multicast address"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_2
    invoke-static {}, Ljava/net/NetworkInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 315
    .local v0, "defaultInterface":Ljava/net/NetworkInterface;
    iget-boolean v2, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 319
    :cond_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 294
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    .line 389
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-eqz v1, :cond_2

    .line 390
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 387
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    .line 392
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v2, "joinGroup"

    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 394
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_3

    move-object v1, p1

    .line 395
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    :cond_3
    move-object v1, p1

    .line 398
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 399
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_4
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 382
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    const-string/jumbo v1, "leaveGroup"

    invoke-virtual {p0, p1, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 346
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 350
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 339
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    .line 436
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-eqz v1, :cond_2

    .line 437
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 434
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    .line 439
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v2, "leaveGroup"

    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 441
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_3

    move-object v1, p1

    .line 442
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    :cond_3
    move-object v1, p1

    .line 445
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 446
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_4
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 429
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .locals 6
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 659
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    const-string/jumbo v4, "send"

    invoke-virtual {p0, v3, v4}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 660
    iget-object v4, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    monitor-enter v4

    .line 661
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 662
    :try_start_1
    iget v3, p0, Ljava/net/MulticastSocket;->connectState:I

    if-nez v3, :cond_5

    .line 666
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 667
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 669
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    .line 688
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTTL()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 690
    .local v0, "dttl":B
    if-eq p2, v0, :cond_2

    .line 692
    :try_start_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 695
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 698
    if-eq p2, v0, :cond_3

    .line 699
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 656
    return-void

    .line 671
    .end local v0    # "dttl":B
    .restart local v2    # "security":Ljava/lang/SecurityManager;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    .line 671
    invoke-virtual {v2, v3, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 661
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit p1

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 660
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 677
    :cond_5
    const/4 v1, 0x0

    .line 678
    .local v1, "packetAddress":Ljava/net/InetAddress;
    :try_start_7
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 679
    .local v1, "packetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_6

    .line 680
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 681
    iget v3, p0, Ljava/net/MulticastSocket;->connectedPort:I

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0

    .line 682
    :cond_6
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 683
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    iget v5, p0, Ljava/net/MulticastSocket;->connectedPort:I

    if-eq v3, v5, :cond_1

    .line 684
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v5, "connected address and packet address differ"

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 696
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    .restart local v0    # "dttl":B
    :catchall_2
    move-exception v3

    .line 698
    if-eq p2, v0, :cond_8

    .line 699
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 696
    :cond_8
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    const-string/jumbo v0, "setInterface"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 468
    iput-object p1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 461
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLoopbackMode(Z)V
    .locals 3
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 591
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 547
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTTL(B)V
    .locals 2
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 210
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 2
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ttl out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 235
    return-void
.end method
