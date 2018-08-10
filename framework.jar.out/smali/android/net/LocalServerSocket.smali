.class public Landroid/net/LocalServerSocket;
.super Ljava/lang/Object;
.source "LocalServerSocket.java"


# static fields
.field private static final LISTEN_BACKLOG:I = 0x32


# instance fields
.field private final impl:Landroid/net/LocalSocketImpl;

.field private final localAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0, p1}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->listen(I)V

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getSockAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->create(I)V

    new-instance v0, Landroid/net/LocalSocketAddress;

    invoke-direct {v0, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    iget-object v1, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->listen(I)V

    return-void
.end method


# virtual methods
.method public accept()Landroid/net/LocalSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    iget-object v1, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocketImpl;->accept(Landroid/net/LocalSocketImpl;)V

    invoke-static {v0}, Landroid/net/LocalSocket;->createLocalSocketForAccept(Landroid/net/LocalSocketImpl;)Landroid/net/LocalSocket;

    move-result-object v1

    return-object v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method
