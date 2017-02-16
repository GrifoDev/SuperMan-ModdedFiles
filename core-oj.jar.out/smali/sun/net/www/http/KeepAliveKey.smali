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
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    .line 297
    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    .line 299
    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    .line 307
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    .line 310
    iput-object p2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    .line 306
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 318
    instance-of v2, p1, Lsun/net/www/http/KeepAliveKey;

    if-nez v2, :cond_0

    .line 319
    return v1

    :cond_0
    move-object v0, p1

    .line 320
    nop

    nop

    .line 321
    .local v0, "kae":Lsun/net/www/http/KeepAliveKey;
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget v2, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    iget v3, v0, Lsun/net/www/http/KeepAliveKey;->port:I

    if-ne v2, v3, :cond_1

    .line 323
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 321
    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 321
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 333
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

    .line 334
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    return v1

    .line 335
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method
