.class public abstract Ljava/net/HttpURLConnection;
.super Ljava/net/URLConnection;
.source "HttpURLConnection.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SERVER_ERROR:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VERSION:I = 0x1f9

.field private static followRedirects:Z

.field private static final methods:[Ljava/lang/String;


# instance fields
.field protected chunkLength:I

.field protected fixedContentLength:I

.field protected fixedContentLengthLong:J

.field protected instanceFollowRedirects:Z

.field protected method:Ljava/lang/String;

.field protected responseCode:I

.field protected responseMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 499
    sput-boolean v3, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 520
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 521
    const-string/jumbo v1, "GET"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "POST"

    aput-object v1, v0, v3

    const-string/jumbo v1, "HEAD"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "OPTIONS"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "PUT"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "DELETE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "TRACE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 520
    sput-object v0, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    .line 276
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    const/4 v2, -0x1

    .line 529
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 282
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 289
    iput v2, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 301
    iput v2, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 310
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 489
    iput v2, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 517
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 528
    return-void
.end method

.method public static getFollowRedirects()Z
    .locals 1

    .prologue
    .line 569
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    return v0
.end method

.method public static setFollowRedirects(Z)V
    .locals 1
    .param p0, "set"    # Z

    .prologue
    .line 551
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 552
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 556
    :cond_0
    sput-boolean p0, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 550
    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "dateString":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "GMT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_0
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 764
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v3, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 798
    .local v2, "port":I
    if-gez v2, :cond_0

    const/16 v2, 0x50

    .line 799
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string/jumbo v3, "connect"

    invoke-direct {v1, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .local v1, "permission":Ljava/security/Permission;
    return-object v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 676
    iget v6, p0, Ljava/net/HttpURLConnection;->responseCode:I

    if-eq v6, v8, :cond_0

    .line 677
    iget v6, p0, Ljava/net/HttpURLConnection;->responseCode:I

    return v6

    .line 685
    :cond_0
    const/4 v3, 0x0

    .line 687
    .local v3, "exc":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v3    # "exc":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 697
    .local v5, "statusLine":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 698
    if-eqz v3, :cond_2

    .line 699
    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_1

    .line 700
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 688
    .end local v5    # "statusLine":Ljava/lang/String;
    .restart local v3    # "exc":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    .local v3, "exc":Ljava/lang/Exception;
    goto :goto_0

    .line 702
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "exc":Ljava/lang/Exception;
    .restart local v5    # "statusLine":Ljava/lang/String;
    :cond_1
    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 704
    :cond_2
    return v8

    .line 715
    :cond_3
    const-string/jumbo v6, "HTTP/1."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 716
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 717
    .local v0, "codePos":I
    if-lez v0, :cond_6

    .line 719
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 720
    .local v4, "phrasePos":I
    if-lez v4, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 721
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 726
    :cond_4
    if-gez v4, :cond_5

    .line 727
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 731
    :cond_5
    add-int/lit8 v6, v0, 0x1

    :try_start_1
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 730
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 732
    iget v6, p0, Ljava/net/HttpURLConnection;->responseCode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v6

    .line 733
    :catch_1
    move-exception v2

    .line 736
    .end local v0    # "codePos":I
    .end local v4    # "phrasePos":I
    :cond_6
    return v8
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 754
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setChunkedStreamingMode(I)V
    .locals 4
    .param p1, "chunklen"    # I

    .prologue
    .line 451
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set streaming mode: already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fixed length streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_2
    if-gtz p1, :cond_3

    const/16 p1, 0x1000

    .end local p1    # "chunklen":I
    :cond_3
    iput p1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 450
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    .prologue
    .line 361
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Chunked encoding streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    if-gez p1, :cond_2

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid content length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_2
    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 360
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 406
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 411
    const-string/jumbo v1, "Chunked encoding streaming mode set"

    .line 410
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid content length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_2
    iput-wide p1, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 405
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 587
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 627
    iget-boolean v2, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v2, :cond_0

    .line 628
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Can\'t reset method: already connected"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 636
    sget-object v2, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    const-string/jumbo v2, "TRACE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 639
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 640
    new-instance v2, Ljava/net/NetPermission;

    const-string/jumbo v3, "allowHttpTrace"

    invoke-direct {v2, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 643
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :cond_1
    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 644
    return-void

    .line 635
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_3
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid HTTP method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract usingProxy()Z
.end method
