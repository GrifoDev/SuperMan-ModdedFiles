.class public Lsun/net/www/protocol/https/Handler;
.super Lsun/net/www/protocol/http/Handler;
.source "Handler.java"


# instance fields
.field protected proxy:Ljava/lang/String;

.field protected proxyPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lsun/net/www/protocol/http/Handler;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/https/Handler;->proxy:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/protocol/https/Handler;->proxyPort:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Lsun/net/www/protocol/http/Handler;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/net/www/protocol/https/Handler;->proxy:Ljava/lang/String;

    .line 52
    iput p2, p0, Lsun/net/www/protocol/https/Handler;->proxyPort:I

    .line 50
    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x1bb

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/https/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;

    invoke-direct {v0, p1, p2, p0}, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/https/Handler;)V

    return-object v0
.end method
