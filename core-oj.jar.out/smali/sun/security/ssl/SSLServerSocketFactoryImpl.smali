.class public final Lsun/security/ssl/SSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactoryImpl.java"


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x32


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

    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 52
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultImpl()Lsun/security/ssl/SSLContextImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    .line 51
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 0
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 60
    iput-object p1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    .line 58
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    const/16 v2, 0x32

    invoke-direct {v0, p1, v2, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(IILsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-direct {v0, p1, p2, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(IILsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "ifAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lsun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-direct {v0, p1, p2, p3, v1}, Lsun/security/ssl/SSLServerSocketImpl;-><init>(IILjava/net/InetAddress;Lsun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketFactoryImpl;->context:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
