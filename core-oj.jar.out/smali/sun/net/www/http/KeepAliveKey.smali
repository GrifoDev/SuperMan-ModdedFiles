.class Lsun/net/www/http/KeepAliveKey;
.super Ljava/lang/Object;
.source "KeepAliveCache.java"


# instance fields
.field private host:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private port:I

.field private protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    iput-object p2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lsun/net/www/http/KeepAliveKey;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    iget v3, v0, Lsun/net/www/http/KeepAliveKey;->port:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method
