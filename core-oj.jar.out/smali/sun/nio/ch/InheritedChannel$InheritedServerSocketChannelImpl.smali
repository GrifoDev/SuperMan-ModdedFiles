.class public Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;
.super Lsun/nio/ch/ServerSocketChannelImpl;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/InheritedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedServerSocketChannelImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsun/nio/ch/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept()Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFD()Ljava/io/FileDescriptor;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFDVal()I
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getFDVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

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

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->implCloseSelectableChannel()V

    invoke-static {}, Lsun/nio/ch/InheritedChannel;->-wrap0()V

    return-void
.end method

.method public bridge synthetic isBound()Z
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic kill()V
    .locals 0

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->kill()V

    return-void
.end method

.method public bridge synthetic localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic socket()Ljava/net/ServerSocket;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    return-void
.end method

.method public bridge synthetic translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method
