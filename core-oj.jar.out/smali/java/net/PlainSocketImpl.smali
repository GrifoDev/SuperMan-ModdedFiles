.class Ljava/net/PlainSocketImpl;
.super Ljava/net/AbstractPlainSocketImpl;
.source "PlainSocketImpl.java"


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;-><init>()V

    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method native socketAccept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketBind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketClose0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketConnect(Ljava/net/InetAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketCreate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketGetOption(ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method native socketListen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketSendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method native socketSetOption(IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method native socketShutdown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
