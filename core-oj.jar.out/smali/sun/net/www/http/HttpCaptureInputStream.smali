.class public Lsun/net/www/http/HttpCaptureInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpCaptureInputStream.java"


# instance fields
.field private capture:Lsun/net/www/http/HttpCapture;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/www/http/HttpCapture;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cap"    # Lsun/net/www/http/HttpCapture;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    .line 40
    iput-object p2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v1}, Lsun/net/www/http/HttpCapture;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 51
    return-void

    .line 54
    :catch_0
    move-exception v0

    .local v0, "iOException":Ljava/io/IOException;
    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 46
    .local v0, "i":I
    iget-object v1, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    invoke-virtual {v1, v0}, Lsun/net/www/http/HttpCapture;->received(I)V

    .line 47
    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v1

    .line 62
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    iget-object v2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lsun/net/www/http/HttpCapture;->received(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 71
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 72
    iget-object v2, p0, Lsun/net/www/http/HttpCaptureInputStream;->capture:Lsun/net/www/http/HttpCapture;

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Lsun/net/www/http/HttpCapture;->received(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return v1
.end method
