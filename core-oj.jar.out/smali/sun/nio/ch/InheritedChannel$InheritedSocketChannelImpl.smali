.class public Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;
.super Lsun/nio/ch/SocketChannelImpl;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/InheritedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedSocketChannelImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic connect(Ljava/net/SocketAddress;)Z
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic finishConnect()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->finishConnect()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getFD()Ljava/io/FileDescriptor;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFDVal()I
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getFDVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->getRemoteAddress()Ljava/net/SocketAddress;

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

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->implCloseSelectableChannel()V

    invoke-static {}, Lsun/nio/ch/InheritedChannel;->-wrap0()V

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isConnectionPending()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnectionPending()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInputOpen()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOutputOpen()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic kill()V
    .locals 0

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    return-void
.end method

.method public bridge synthetic localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic read([Ljava/nio/ByteBuffer;II)J
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->shutdownInput()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic socket()Ljava/net/Socket;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/SocketChannelImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    return-void
.end method

.method public bridge synthetic translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic write(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic write([Ljava/nio/ByteBuffer;II)J
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/SocketChannelImpl;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
