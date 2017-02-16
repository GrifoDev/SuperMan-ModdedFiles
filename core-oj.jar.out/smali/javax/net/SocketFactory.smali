.class public abstract Ljavax/net/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# static fields
.field private static theFactory:Ljavax/net/SocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljavax/net/SocketFactory;
    .locals 2

    .prologue
    .line 92
    const-class v1, Ljavax/net/SocketFactory;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljavax/net/DefaultSocketFactory;

    invoke-direct {v0}, Ljavax/net/DefaultSocketFactory;-><init>()V

    sput-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 104
    sget-object v0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefault(Ljavax/net/SocketFactory;)V
    .locals 2
    .param p0, "factory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 109
    const-class v0, Ljavax/net/SocketFactory;

    monitor-enter v0

    .line 110
    :try_start_0
    sput-object p0, Ljavax/net/SocketFactory;->theFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 132
    .local v1, "uop":Ljava/lang/UnsupportedOperationException;
    new-instance v0, Ljava/net/SocketException;

    .line 133
    const-string/jumbo v2, "Unconnected sockets not implemented"

    .line 132
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {v0, v1}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 135
    throw v0
.end method

.method public abstract createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
