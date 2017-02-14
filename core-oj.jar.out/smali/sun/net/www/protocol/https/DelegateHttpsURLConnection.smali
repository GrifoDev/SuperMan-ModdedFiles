.class public Lsun/net/www/protocol/https/DelegateHttpsURLConnection;
.super Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;
.source "DelegateHttpsURLConnection.java"


# instance fields
.field public httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    iput-object p4, p0, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V

    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->finalize()V

    return-void
.end method

.method protected getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method protected getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
