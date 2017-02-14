.class public final Lsun/security/ssl/SSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryImpl.java"


# static fields
.field private static defaultContext:Lsun/security/ssl/SSLContextImpl;


# instance fields
.field private context:Lsun/security/ssl/SSLContextImpl;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultImpl()Lsun/security/ssl/SSLContextImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
