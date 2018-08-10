.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$1;,
        Landroid/net/Network$NetworkBoundSocketFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private volatile mConnectionPool:Lcom/android/okhttp/ConnectionPool;

.field private volatile mDns:Lcom/android/okhttp/Dns;

.field private final mLock:Ljava/lang/Object;

.field private volatile mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    sget-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http.maxConnections"

    const-string/jumbo v1, "5"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    const-string/jumbo v0, "http.keepAliveDuration"

    const-string/jumbo v1, "300000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    new-instance v0, Landroid/net/Network$1;

    invoke-direct {v0}, Landroid/net/Network$1;-><init>()V

    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    iput-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroid/net/Network;->netId:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    iput-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    iget v0, p1, Landroid/net/Network;->netId:I

    iput v0, p0, Landroid/net/Network;->netId:I

    return-void
.end method

.method private maybeInitHttpClient()V
    .locals 6

    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/Network$2;

    invoke-direct {v0, p0}, Landroid/net/Network$2;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    :cond_0
    iget-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    sget v2, Landroid/net/Network;->httpMaxConnections:I

    sget-wide v4, Landroid/net/Network;->httpKeepAliveDurationMs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bindSocket(Ljava/io/FileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Socket is connected"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    iget v5, v0, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOTCONN:I

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v5

    throw v5

    :catch_1
    move-exception v1

    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Only AF_INET/AF_INET6 sockets supported"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    iget v6, p0, Landroid/net/Network;->netId:I

    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->bindSocketToNetwork(II)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v5, Landroid/system/ErrnoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Binding socket to network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    neg-int v7, v2

    invoke-direct {v5, v6, v7}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v5

    throw v5

    :cond_1
    return-void
.end method

.method public bindSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bindSocket(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/Network;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/Network;

    iget v2, p0, Landroid/net/Network;->netId:I

    iget v3, v0, Landroid/net/Network;->netId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkHandle()J
    .locals 6

    iget v2, p0, Landroid/net/Network;->netId:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    const-wide/32 v0, 0xfacade

    iget v2, p0, Landroid/net/Network;->netId:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xfacade

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 3

    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/Network$NetworkBoundSocketFactory;

    iget v2, p0, Landroid/net/Network;->netId:I

    invoke-direct {v0, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;I)V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "No ConnectivityManager yet constructed, please construct one"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->makeProxy()Ljava/net/Proxy;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    :cond_1
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "proxy is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct {p0}, Landroid/net/Network;->maybeInitHttpClient()V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v3

    iget-object v4, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    iget-object v3, p0, Landroid/net/Network;->mDns:Lcom/android/okhttp/Dns;

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    return-object v3

    :cond_1
    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/net/MalformedURLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid URL or unrecognized protocol "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
