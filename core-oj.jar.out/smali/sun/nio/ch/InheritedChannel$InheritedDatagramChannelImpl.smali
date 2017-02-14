.class public Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;
.super Lsun/nio/ch/DatagramChannelImpl;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/InheritedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedDatagramChannelImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFD()Ljava/io/FileDescriptor;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFDVal()I
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getFDVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->implCloseSelectableChannel()V

    invoke-static {}, Lsun/nio/ch/InheritedChannel;->-wrap0()V

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic kill()V
    .locals 0

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V

    return-void
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic read([Ljava/nio/ByteBuffer;II)J
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic socket()Ljava/net/DatagramSocket;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/DatagramChannelImpl;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    return-void
.end method

.method public bridge synthetic translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic write(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic write([Ljava/nio/ByteBuffer;II)J
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
