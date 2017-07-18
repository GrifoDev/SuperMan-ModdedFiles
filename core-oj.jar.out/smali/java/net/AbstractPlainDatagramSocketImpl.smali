.class abstract Ljava/net/AbstractPlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "AbstractPlainDatagramSocketImpl.java"


# static fields
.field private static final connectDisabled:Z

.field private static final os:Ljava/lang/String;


# instance fields
.field connected:Z

.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private loopbackMode:Z

.field private multicastInterface:I

.field timeout:I

.field private trafficClass:I

.field private ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "os.name"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    sget-object v0, Ljava/net/AbstractPlainDatagramSocketImpl;->os:Ljava/lang/String;

    const-string/jumbo v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    iput-boolean v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->multicastInterface:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->loopbackMode:Z

    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->ttl:I

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    return-void
.end method

.method static getNIFirstAddress(I)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-lez p0, :cond_0

    invoke-static {p0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    return-object v2

    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected declared-synchronized bind(ILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->bind0(ILjava/net/InetAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract bind0(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketClose()V

    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    :cond_0
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->connect0(Ljava/net/InetAddress;I)V

    iput-object p1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    iput p2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    return-void
.end method

.method protected abstract connect0(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected declared-synchronized create()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->datagramSocketCreate()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract datagramSocketClose()V
.end method

.method protected abstract datagramSocketCreate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected disconnect()V
    .locals 1

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->disconnect0(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectedPort:I

    return-void
.end method

.method protected abstract disconnect0(I)V
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->close()V

    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket Closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :cond_1
    :goto_0
    return-object v0

    :sswitch_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getNIFirstAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x12 -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_2
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected isClosed()Z
    .locals 1

    iget-object v0, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected join(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    return-void
.end method

.method protected abstract join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected leave(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    return-void
.end method

.method protected abstract leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nativeConnectDisabled()Z
    .locals 1

    sget-boolean v0, Ljava/net/AbstractPlainDatagramSocketImpl;->connectDisabled:Z

    return v0
.end method

.method protected abstract peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->receive0(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract receive0(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket Closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_TIMEOUT"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput v1, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->timeout:I

    return-void

    :sswitch_1
    if-eqz p2, :cond_4

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ljava/net/AbstractPlainDatagramSocketImpl;->trafficClass:I

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->socketSetOption(ILjava/lang/Object;)V

    return-void

    :cond_4
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_TOS"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_2
    if-eqz p2, :cond_5

    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :cond_5
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_REUSEADDR"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    if-eqz p2, :cond_6

    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :cond_6
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_BROADCAST"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Cannot re-bind Socket"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_5
    if-eqz p2, :cond_7

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    :cond_7
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for SO_SNDBUF or SO_RCVBUF"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_6
    if-eqz p2, :cond_8

    instance-of v2, p2, Ljava/net/InetAddress;

    if-nez v2, :cond_3

    :cond_8
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_MULTICAST_IF"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_7
    if-eqz p2, :cond_a

    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_9

    instance-of v2, p2, Ljava/net/NetworkInterface;

    if-eqz v2, :cond_a

    :cond_9
    instance-of v2, p2, Ljava/net/NetworkInterface;

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/Integer;

    check-cast p2, Ljava/net/NetworkInterface;

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object p2, v0

    goto :goto_0

    :cond_a
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_MULTICAST_IF2"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_8
    if-eqz p2, :cond_b

    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :cond_b
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_MULTICAST_LOOP"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_6
        0x12 -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_3
        0x1001 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract socketGetOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract socketSetOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method
