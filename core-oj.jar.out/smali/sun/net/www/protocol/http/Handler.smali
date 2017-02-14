.class public Lsun/net/www/protocol/http/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# instance fields
.field protected proxy:Ljava/lang/String;

.field protected proxyPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/http/Handler;->proxy:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/protocol/http/Handler;->proxyPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    iput-object p1, p0, Lsun/net/www/protocol/http/Handler;->proxy:Ljava/lang/String;

    iput p2, p0, Lsun/net/www/protocol/http/Handler;->proxyPort:I

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/http/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-direct {v0, p1, p2, p0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    return-object v0
.end method
